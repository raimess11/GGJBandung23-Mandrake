extends CenterContainer

onready var itemTextureRect = $TextureRect

func display_roots(roots):
	if roots != null:
		itemTextureRect.texture = roots.Texture
	else:
		pass
