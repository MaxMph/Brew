extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if Global.cur_item != null:
			if Global.cur_item["item_name"] == "vile":
				
				if Global.valid:
					print("ftygujhk")
					$"../sell".play()
					Global.money += randi_range(10, 30)
					$"..".new_request()
					Global.valid = false
