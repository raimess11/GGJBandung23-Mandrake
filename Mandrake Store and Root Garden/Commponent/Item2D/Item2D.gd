extends Node2D

export(Resource) var data = preload("res://roots/Ríza Dilitiríou.tres")

var size:float = 1

var DropPoint:Vector2
var DropPoint_list:Array = []
var Station_list:Array = []
var currentDropPoint:Node

var selected:bool
var onDropPoint:bool = false

func _ready():
	$Sprite.texture = data.texture
	$Sprite.scale.x = size
	$Sprite.scale.y = size
	DropPoint_list = get_tree().get_nodes_in_group("DropPoint")
	DropPoint = global_position
	get_closed_dropPoint()


func _physics_process(delta):
	if selected:
		global_position = lerp(global_position,get_global_mouse_position(),30*delta)
	else:
		global_position = lerp(global_position,DropPoint if currentDropPoint == null else currentDropPoint.global_position ,25*delta)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _input(event):
	if Input.is_action_just_released("click"):
		if selected == true:
			selected = false
			get_closed_dropPoint()
		

func get_closed_dropPoint(plus:bool = false):
	var finalPoint
	var minimun:int
	for point in DropPoint_list:
		print(point.global_position)
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
	

func initial_currentDropPoint():
	var minimun:int = DropPoint_list[0].global_position.distance_to(global_position)
	currentDropPoint = DropPoint_list[0]
	for point in DropPoint_list:
		if point.global_position.distance_to(global_position) < minimun:
			currentDropPoint = point
			print(point)
	currentDropPoint.select()
func droped():
	pass
