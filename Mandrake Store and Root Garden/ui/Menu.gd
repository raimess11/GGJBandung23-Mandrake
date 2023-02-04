extends Control

onready var hBox = $HBoxContainer

func _ready():
	hBox.add_constant_override("separation",35)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Credit_pressed():
	get_tree().change_scene("res://ui/Credits.tscn")


func _on_Start_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Exit_pressed():
	get_tree().quit()
