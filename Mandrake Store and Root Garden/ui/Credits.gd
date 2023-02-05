extends Control

onready var hBox = $HBoxContainer

func _ready():
	hBox.add_constant_override("separation",75)


func _on_Exit_pressed():
	get_tree().change_scene("res://ui/Menu.tscn")
