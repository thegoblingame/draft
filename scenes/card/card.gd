extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	print(self.name)
	print(self.get_class())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func on_select():
# if mode is draft
# emit append_to_list
# emit new_draft_round
