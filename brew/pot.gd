extends Area2D

#var atributes = []
var added = []

var potion_recipies = {
	"health": ["purple violet", "bones"],
	"strength": ["shrooms", "bones"],
	"curse nullifier": ["sage", "purple violet", "shrooms"]
}


func _ready() -> void:
	connect("input_event", _on_input_event)


func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		#print("wowza1")
		Global.valid = false
		if Global.cur_item != null:
			$splash.play()
			#print("wowza2")
			if Global.cur_item["type"] == "ingredient":
				#print("wowza3")
				added.append(Global.cur_item["item_name"])
				Global.cur_item = null
			elif Global.cur_item["type"] == "tool":
				if Global.cur_item["item_name"] == "vile":
					vile()

func vile():
	check_ingredients("health")
	check_ingredients("strength")
	check_ingredients("curse nullifier")
	added.clear()
	#for i in potion_recipies["health"]:
		#if added.find()

func check_ingredients(potion: String): #array: Array):
	var valid = true
	for i in potion_recipies[potion]:
		if added.find(i) == -1:
			valid = false
	if valid:
		if potion == Global.requested_potion:
			print("yes")
			Global.valid = true
		print(potion)
