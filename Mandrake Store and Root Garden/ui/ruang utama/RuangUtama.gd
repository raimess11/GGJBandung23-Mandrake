extends Node2D

var up_value = 1

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouse:
		if event.is_action_released("click"):
			$GatheringMap.visible = true


func _input(event):
	if event is InputEventKey:
		if not event.pressed and event.scancode == KEY_SPACE:
			up_value *= -1
			$book.visible = up_value>0
			$basket.visible = up_value>0
