extends Node2D

export(Resource) var data = preload("res://roots/Ríza Dilitiríou.tres")


var DropPoint:Vector2
var DropPoint_list:Array = []
var currentDropPoint:Node

var selected:bool
var onDropPoint:bool = false

func _ready():
	$Sprite.texture = data.texture
	DropPoint_list = get_tree().get_nodes_in_group("DropPoint")
	DropPoint = get_closed_dropPoint()



func _physics_process(delta):
	if selected:
		global_position = lerp(global_position,get_global_mouse_position(),30*delta)
	else:
		global_position = lerp(global_position,DropPoint,25*delta)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _input(event):
	if Input.is_action_just_released("click"):
		if selected == true:
			selected = false
			get_closed_dropPoint()
		

func get_closed_dropPoint():
	var finalPoint
	for point in DropPoint_list:
		if not point.is_empty():
			continue
		var distance = global_position.distance_to(point.global_position)
		if distance < point.radius:
			if currentDropPoint != null:
				currentDropPoint.deselect()
			point.select()
			currentDropPoint = point
			DropPoint = point.global_position
			finalPoint = point.global_position
		
	return finalPoint

func droped():
	pass
