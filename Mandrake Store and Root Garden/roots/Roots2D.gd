extends Node2D

export(Resource) var data = preload("res://roots/Ríza Dilitiríou.tres")

var selected:bool = true
var onDropPoint:bool = false

func _ready():
	$Sprite.texture = data.texture

func _process(delta):
	if selected:
		global_position = get_global_mouse_position()
	else:
		onDropPoint=true
