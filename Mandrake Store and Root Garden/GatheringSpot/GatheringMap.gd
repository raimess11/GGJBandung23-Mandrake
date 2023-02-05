extends Node2D

onready var reminderUI = $reminderUI
onready var title = $reminderUI/ColorRect/title
onready var desc = $reminderUI/ColorRect/description
onready var fadePause = $fadePause

onready var item2d = preload("res://Commponent/Item2D/Item2D.tscn")

var gatheringSpotToGo = ""

func disableBackground():
	pass

func _on_swamp_pressed():
	get_tree().paused = true
	fadePause.visible = true
	reminderUI.visible = true
	title.text = "swamp"
	desc.text = "a 2 days journey with a 7n coins bargain"


func _on_forest_pressed():
	get_tree().paused = true
	fadePause.visible = true
	reminderUI.visible = true
	title.text = "forest"
	desc.text = "a 2 days journey with a 6n coins bargain"


func _on_river_pressed():
	get_tree().paused = true
	fadePause.visible = true
	reminderUI.visible = true
	title.text = "river"
	desc.text = "a 1 day journey with a 2n coins bargain"


func _on_mountain_pressed():
	get_tree().paused = true
	fadePause.visible = true
	reminderUI.visible = true
	title.text = "mountain"
	desc.text = "a 3 days journey with a 12n coins bargain"

func _on_Button_pressed():
	visible = false

export(Array, Resource) var roots

func _on_go_pressed():
	for i in int(rand_range(3, 7)):
		var newItem2d = item2d.instance()
		newItem2d.data = roots[int(rand_range(0,2.99))]
		newItem2d.global_position = Vector2(500+(randf()-0.5)*400,300+(randf()-0.5)*500)
		newItem2d.size = 0.15
		get_tree().current_scene.add_child(newItem2d)
