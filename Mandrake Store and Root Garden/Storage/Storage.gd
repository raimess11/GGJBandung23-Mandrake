extends Node2D

var up_value = 1
var target_position = global_position

func _ready():
	target_position = global_position

func _physics_process(delta):
	if global_position.distance_to(target_position):
		global_position = lerp(global_position,target_position,25*delta)

func _input(event):
	if event is InputEventKey:
		if not event.pressed and event.scancode == KEY_SPACE:
			target_position += Vector2.UP*300 * up_value
			up_value *= -1
			
	
