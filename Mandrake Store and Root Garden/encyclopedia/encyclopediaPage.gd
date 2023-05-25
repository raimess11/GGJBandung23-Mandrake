extends Control

onready var encyclopedia = preload("res://encyclopedia/e.tres")

func _ready():
	var data = encyclopedia.findRootsFromName(EncyclopediaGlobalVar.getNameRoots())
	$Title.text = data["Name"]
	$Desc.text = data["Description"]
	var img = load(data["TextureURL"])
	$TextureRect.texture = img
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://encyclopedia/encyclopediaGrid.tscn")
