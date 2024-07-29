extends Node
var mode
@export var draft_manager: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_draft():
# set mode to draft. This will be needed later, 
# as Main will manage what mode the player is in and change between draft/prep/combat accordingly
	mode = "draft"
	var draft = draft_manager.instantiate()
	add_child(draft)
