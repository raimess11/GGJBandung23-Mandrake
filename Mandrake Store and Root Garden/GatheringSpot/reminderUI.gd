extends CanvasLayer




func _on_wait_pressed():
	get_tree().paused = false
	get_parent().fadePause.visible = false
	visible = false
	
