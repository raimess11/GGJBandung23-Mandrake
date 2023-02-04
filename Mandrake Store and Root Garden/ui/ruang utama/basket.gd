extends Node2D

export(String) var addres = ""

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouse:
		if event.is_pressed():
			get_tree().change_scene(addres)
