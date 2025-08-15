extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_request()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CanvasLayer/quest/time.value = $CanvasLayer/quest/time/Timer.time_left
	$CanvasLayer/money.text = "$" + str(Global.money)
func new_request():
	$CanvasLayer/quest/time/Timer.wait_time = Global.request_time
	$CanvasLayer/quest/time.max_value = Global.request_time
	$CanvasLayer/quest/time/Timer.start()
	match randi_range(0, 1):
		0: Global.requested_potion = "health"
		
		1: Global.requested_potion = "strength"
	$CanvasLayer/quest/request.text = "1 " + Global.requested_potion + " potion"
	
	
	Global.request_time = Global.request_time / 1.6


func _on_timer_timeout() -> void:
	#get_tree().reload_current_scene()
	Global.reset()
