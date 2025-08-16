extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)
	$"../CanvasLayer/book".show()
	get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if $"../CanvasLayer/book".visible == false:
			$"../CanvasLayer/book".show()
			get_tree().paused = true
		#else:
			#$"../CanvasLayer/book".hide()
			#get_tree().paused = false


func _on_leave_pressed() -> void:
	$"../CanvasLayer/book".hide()
	get_tree().paused = false
