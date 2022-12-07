extends Area


func _ready():
	pass


func _on_GhostNPC_body_entered(body):
	var new_dialog = Dialogic.start('Conversation')
	add_child(new_dialog)
