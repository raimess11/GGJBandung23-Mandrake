extends Node2D

	target_position = global_position

func _input(event):
	if event is InputEventKey:
		if not event.pressed and event.scancode == KEY_SPACE:
			target_position += Vector2.UP*300
		if not event.pressed and event.scancode == KEY_BACKSPACE:
			target_position += Vector2.DOWN*300
			

