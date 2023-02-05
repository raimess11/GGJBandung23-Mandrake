extends Node2D


export(int) var columns = 1
export(int) var rows = 1

export(int) var spacing = 100

onready var DropPoint = preload("res://Commponent/DropPoint/DropPoint.tscn")

var target_position:Vector2

func _ready():
	for x in columns:
		for y in rows:
			var newDropPoint = DropPoint.instance()
			newDropPoint.global_position += Vector2(x - columns/2,y) * (32+spacing/10) * 2 
			add_child(newDropPoint)
	update()
