extends ItemList

#func _ready() -> void:

func _on_draft_manager_update_decklist(name: String) -> void:
	add_item(name)
