extends CanvasLayer

var clickscale = 0.8
@export var underimg = null

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	$Node2D.global_position = get_viewport().get_mouse_position()
	if underimg != null:
		$Node2D/underimg.texture = underimg
	elif $Node2D/underimg.texture != null:
		$Node2D/underimg.texture = null
	

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			$Node2D.scale = Vector2(clickscale, clickscale)
			underimg = load("res://New folder/purple violet.png")
			#$Node2D/Sprite2D2.show()
			#$Node2D/Sprite2D.hide()
		else:
			$Node2D.scale = Vector2(1.0, 1.0)
			#$Node2D/Sprite2D2.hide()
			#$Node2D/Sprite2D.show()
