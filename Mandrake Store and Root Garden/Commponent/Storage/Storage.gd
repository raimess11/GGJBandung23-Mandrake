extends Node2D

onready var InventoryDisplay = $InventoryDisplay
onready var inventory = $InventoryDisplay.inventory

onready var RizaDilitiriou = preload("res://roots/Ríza Dilitiríou.tres")

func _ready():
	for i in 10:
		inventory.add_item(RizaDilitiriou)
		print(inventory.itemInInventory.size())
		InventoryDisplay.update_Display()
