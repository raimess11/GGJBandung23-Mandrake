extends CenterContainer

onready var itemTextureRect = $TextureRect
onready var itemQuantityLabel = $Label

func display_roots(roots):
	
	if roots != null:
		itemTextureRect.texture = roots.texture
		var quantity = roots.quantity
		itemQuantityLabel.text = str(quantity) if quantity > 0 else ""
		#itemTextureRect.self_modulate.a = int(roots.quantity == 0)
	else:
		pass
