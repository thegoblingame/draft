extends CanvasLayer
signal start_draft



func _on_start_button_pressed():
	$StartButton.hide()
	start_draft.emit()
