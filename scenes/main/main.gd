extends Node
var mode: String
var draft = load("res://scenes/draft_manager/draft_manager.tscn").instantiate()

func start_draft():
# set mode to draft. This will be needed later, 
# as Main will manage what mode the player is in and change between draft/prep/combat accordingly
	#mode = "draft"
	draft.end_draft.connect(end_draft)
	add_child(draft)

func end_draft():
# this is actually pretty slop, fix this shit when you revisit. PLEASE
	draft.queue_free()
	print(get_viewport().get_visible_rect().size.x)
	var draft_end_label := Label.new()
	var x = get_viewport().get_visible_rect().size.x
	var y = get_viewport().get_visible_rect().size.y
	draft_end_label.set_global_position(Vector2(x/2 - 48,y/2))
	draft_end_label.text = "draft over"
	$HUD.add_child(draft_end_label)
