extends Node

var current_round = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	print("hi")
# set round to 1, max rounds to 3
	current_round += 1
# call get_draft_picks
# call new_draft_round

func _process(delta):
	$RoundCounter.set_text("hello")
	
func new_draft_round():
# emit get_cards, receive array of randomly chosen cards
# instantiate 4 cards, each one is given card info
# reset timer
	pass
	#$DraftPickTimer.start()

#func get_draft_picks():
	

func end_draft():
	print("draft over")
