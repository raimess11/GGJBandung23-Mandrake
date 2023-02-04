extends CanvasLayer

onready var amount = $TextureRect/HBoxContainer/Amount

func _on_Slider_value_changed(value):
	amount.text = str(value)


func _on_Deal_pressed():
	pass # Replace with function body.
