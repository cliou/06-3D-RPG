extends Area


func _ready():
	pass



func _on_Area_body_entered(body):
	if body.name == "Player":
		var new_dialog = Dialogic.start('Conversation')
		add_child(new_dialog)
