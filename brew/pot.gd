extends Area2D

var atributes = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		#print("wowza1")
		if Global.cur_item != null:
			#print("wowza2")
			if Global.cur_item["type"] == "ingredient":
				print("wowza3")
				Global.cur_item = null
