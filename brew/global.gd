extends Node

var has_item = false
var cur_item

var in_menu = false

var request_time = 20.0
var requested_potion = ""

var money = 0

#var potion = ""
var valid = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reset():
	get_tree().change_scene_to_file("res://main.tscn")
	has_item = false
	cur_item = null
	in_menu = false
	request_time = 20.0
	requested_potion = ""
	money = 0
	valid = false
