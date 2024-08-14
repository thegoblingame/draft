extends Node

var JSON_cards = FileAccess.open("res://cards.json", FileAccess.READ).get_as_text()
var json = JSON.new()
var json_parse = json.parse(JSON_cards)
var card_pool = json.data.duplicate(true)
var current_round = 0
var round_text = "Round %s/3"
var time

func _ready():
	new_draft_round()
	
func new_draft_round():
	current_round += 1
	$CounterControl/RoundCounter.set_text(round_text % current_round)
	time = 5
	$TimerControl/PickTimerLabel.set_text(str(time))
# instantiate 3 cards, each one is given card info
	get_draft_picks(3)
func get_draft_picks(number):
	var i = 0
	while i < number:
		i += 1
		var card = load("res://scenes/card/card.tscn").instantiate()
		var randomly_selected_card = card_pool.pop_at(randi() % card_pool.size())
		card.resource = load(randomly_selected_card.path)
		card.set_position(Vector2(-150 + (i * 300), -100))
		$Slots.add_child(card)

	

func end_draft():
	print("draft over")

#func autopick():
## pick random card
#
func _on_pick_timer_timeout():
	time -= 1
	$TimerControl/PickTimerLabel.set_text(str(time))
	if time == -1:
# automatically pick card
		new_draft_round()
		
		
