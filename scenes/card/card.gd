extends Node

var resource: CardResource
# Called when the node enters the scene tree for the first time.
func _ready():
	$CardName.text = resource.card_name
	$CardCost.text = String.num_int64(resource.card_cost)
	$CardArt.texture = resource.card_art
	$CardText.text = resource.card_text
#func on_select():
# if mode is draft
# emit append_to_list
# emit new_draft_round
