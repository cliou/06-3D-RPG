extends Spatial

var menu = null
const SAVE_PATH = "res://settings.cfg"
var save_file = ConfigFile.new()
var inputs = ["left","right","forward","back"]

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS


func _unhandled_input(_event):
	if Input.is_action_just_pressed("Menu"):
		var menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if menu.visible:
				menu.hide()
				get_tree().paused = false
			else:
				menu.show()


