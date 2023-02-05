extends Node2D

export var radius:int
var empty = true

func _draw():
	draw_circle(Vector2.ZERO, radius, Color.moccasin)

func select():
	empty = false
	modulate = Color.webmaroon

func deselect():
	empty = true
	modulate = Color.white

func is_empty()->bool:
	return empty
