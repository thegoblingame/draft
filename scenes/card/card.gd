extends Panel
signal card_picked(name: String)

var resource: CardResource
var red := Color.hex(0xff0000ff)
var black := Color.hex(0x000000ff)
var sb := StyleBoxFlat.new()

func _ready():
	$CardName.text = resource.name
	$CardCost.text = String.num_int64(resource.cost)
	$CardArt.texture = resource.art
	$CardText.text = resource.body_text
	adjust_font_size($CardName,20)
	adjust_font_size($CardText,100)
	
#func on_select():
# if mode is draft
# emit append_to_list
# emit new_draft_round

func adjust_font_size(label: Label,cutoff: int):
	if label.text.length() > cutoff:
		label.set("theme_override_font_sizes/font_size", 14)

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed == true and event.button_index == 1:
		card_picked.emit(resource.name)

func _on_mouse_entered() -> void:
	
	for side in 4:
		sb.set_expand_margin_all(5)
		sb.set_border_width(side, 5)
		sb.border_color = red
		sb.bg_color = black
	add_theme_stylebox_override("panel", sb)

func _on_mouse_exited() -> void:
	for side in 4:
		sb.border_color = black
