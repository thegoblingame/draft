extends Node

var cards = load("../cards.json")
var current_round = 1
var round_text = "Round %s/3"
# Called when the node enters the scene tree for the first time.
func _ready():
	new_draft_round()
	$RoundCounter.set_text(round_text % current_round)	
	print(cards)
func new_draft_round():
# emit get_cards, receive array of randomly chosen cards
# instantiate 4 cards, each one is given card info
# reset timer
# increment current_round
	current_round += 1
	#$DraftPickTimer.start()

#func get_draft_picks():
	

func end_draft():
	print("draft over")
