extends CanvasLayer

onready var reminderUI = $reminderUI
onready var title = $reminderUI/ColorRect/title
onready var desc = $reminderUI/ColorRect/description
onready var fadePause = $fadePause

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
