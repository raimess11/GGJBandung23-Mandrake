extends Control

func _ready():
	$CanvasLayer.visible = false
	

func _on_Button_button_up():
	visible = false
	$CanvasLayer.visible = false
	
