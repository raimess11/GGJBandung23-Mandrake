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
	target_position = global_position
	update()

func _physics_process(delta):
	if global_position.distance_to(target_position):
		global_position = lerp(global_position,target_position,25*delta)

func _input(event):
	if event is InputEventKey:
		if not event.pressed and event.scancode == KEY_SPACE:
			target_position += Vector2.UP*200
		if not event.pressed and event.scancode == KEY_BACKSPACE:
			target_position += Vector2.DOWN*200
			
