extends Area2D
class_name item

@export var info = {
	"item_name": "default",
	"img": preload("res://icon.svg"),
	"type": "ingredient",
	"acidic": false,
	"medicinal": false,
	"toxic": false,
	"amplifier": false,
	"nullifier": false
}

#@export var item_name: String = "default"
#@export var img = Image
##@export var type: Array[String] = []f
##@export var type: Array = []
#
#@export var acidic = false
#@export var medicinal = false
#@export var toxic = false
#@export var amlifier = false
#@export var nullifier = false

var type: Array = []

func _ready() -> void:
	#connect("input_event", _on_input_event())
	connect("input_event", _on_input_event)
	
	#add_type(acidic)
	#add_type(medicinal)
	#add_type(toxic)
	#add_type(amlifier)
	#add_type(nullifier)
	#match true:
		#acidic:
			#type.append(acidic)

func _process(delta: float) -> void:
	pass

func add_type(x):
	if x == true:
		type.append(x)



func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print(info["item_name"])
		Global.cur_item = info
