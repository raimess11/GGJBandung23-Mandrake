extends CenterContainer

onready var itemTextureRect = $TextureRect
onready var itemQuantityLabel = $Label

var selected:bool = false

func display_roots(roots):
	if roots != null:
		itemTextureRect.texture = roots.texture
		var quantity = roots.quantity
		itemQuantityLabel.text = str(quantity) if quantity > 1 else ""
		#itemTextureRect.self_modulate.a = 100#int(roots.quantity == 0)
	else:
		pass


func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton:
		selected = event.pressed and event.button_index == BUTTON_LEFT


func _on_TextureRect_mouse_exited():
	if selected:
		pass #buat object baru
