extends CenterContainer

onready var itemTextureRect = $TextureRect
onready var itemQuantityLabel = $Label

onready var roots2D = preload("res://roots/Roots2D.tscn")

var selected:bool = false
var travel:int = 0

var startPosition:Vector2

var roots:Node2D

var DropPoint_list:Array = []

func display_roots(roots):
	if roots != null:
		itemTextureRect.texture = roots.texture
		var quantity = roots.quantity
		itemQuantityLabel.text = str(quantity) if quantity > 1 else ""
		#itemTextureRect.self_modulate.a = 100#int(roots.quantity == 0)
		DropPoint_list = get_tree().get_nodes_in_group("DropPoint")
		
	else:
		pass


func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton: #give true if press, give false if release
		selected = event.pressed and event.button_index == BUTTON_LEFT
		startPosition = get_global_mouse_position()
		if selected :
			itemTextureRect.self_modulate.a = 0
			roots = generate_New_Roots2D()
		else:
			#jika di drop point, inventroy akan pindah ke inventory lain
			roots.selected = false
			print("just unselecting")
			for point in DropPoint_list:
				var distance = roots.global_position.distance_to(point.global_position)
				if distance < point.radius:
					point.select()
					roots.global_position = point.global_position
					
			if false:
				pass
			#jika tidak berada pada drop point, inventory akan kembali ke tempat semula
			else:
				roots.queue_free()
				itemTextureRect.self_modulate.a = 1.00



func generate_New_Roots2D() -> Node2D:
	var newRoots2D = roots2D.instance()
	newRoots2D.global_position = get_global_mouse_position()
	get_tree().current_scene.add_child(newRoots2D)
	return newRoots2D

