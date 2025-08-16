extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/profit.text = "Profit: $ " + str(Global.money)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_open_shop_pressed() -> void:
	Global.reset()


func _on_quit_pressed() -> void:
	get_tree().quit()
