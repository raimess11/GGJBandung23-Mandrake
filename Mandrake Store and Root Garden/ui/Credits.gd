extends Control

onready var hBox = $HBoxContainer

func _ready():
	hBox.add_constant_override("separation",75)
