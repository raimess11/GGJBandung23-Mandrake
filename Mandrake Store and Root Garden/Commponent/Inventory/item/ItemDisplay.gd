extends CenterContainer

onready var Item2D = preload("res://Commponent/Item2D/Item2D.tscn")
onready var DnDpoint = $DragNDropPoint

func _ready():
#	DnDpoint.global_position = $TextureRect.rect_global_position
	pass

func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			var newItem2D = Item2D.instance()
			add_child(newItem2D)
