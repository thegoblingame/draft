extends Node
signal update_decklist(name: String)
signal end_draft

var JSON_cards = FileAccess.open("res://cards.json", FileAccess.READ).get_as_text()
var json := JSON.new()
var json_parse := json.parse(JSON_cards)
var card_pool: Array = json.data.duplicate(true)
var current_card_options := []
var current_round := 0
var round_text := "Round %s/3"
var time: int
# cards are offset by 350 * 2 + each card is 260 px wide
var cards_width := 960

func _ready():
	new_draft_round()
	$CounterControl/DeckList.set_position(Vector2(0,-200))
	
func new_draft_round():
	if $Slots.get_children().size() > 0:
		for card in $Slots.get_children():
			card.queue_free()
	current_round += 1
	$CounterControl/RoundCounter.set_text(round_text % current_round)
	time = 99
	$TimerControl/PickTimerLabel.set_text(str(time))
	get_draft_picks(3)
	
func get_draft_picks(number: int):
	var i = 0
	while i < number:
		i += 1
		var card = load("res://scenes/card/card.tscn").instantiate()
		var randomly_selected_card = card_pool.pop_at(randi() % card_pool.size())
		current_card_options.append(randomly_selected_card.name)
		card.resource = load(randomly_selected_card.path)
		var card_offset_x = ($Slots.get_viewport_rect().size.x - cards_width) / 2
		# height of the screen
		#print($Slots.get_viewport_rect().size.y)
		card.set_position(Vector2(card_offset_x + (i - 1) * 350, -192.5))
		card.card_picked.connect(on_card_picked)
		$Slots.add_child(card)

func _on_pick_timer_timeout():
	time -= 1
	$TimerControl/PickTimerLabel.set_text(str(time))
	if time == -1:
		on_card_picked(current_card_options[randi() % current_card_options.size()])
		
		
func on_card_picked(name: String):
	#print(get_tree_string_pretty())
	await get_tree().create_timer(0.1).timeout
	update_decklist.emit(name)
	if current_round < 3:
		new_draft_round()
	else:
		end_draft.emit()
