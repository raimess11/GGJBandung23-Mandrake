extends Node2D


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouse:
		if event.is_pressed():
			$GatheringMap.visible = true
