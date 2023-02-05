extends Node2D

export(Resource) var inventory

onready var ItemDisplay = preload("res://Commponent/Inventory/item/ItemDisplay.tscn")
onready var rizaDilitriou = preload("res://roots/Ríza Dilitiríou.tres")

onready var inventoryGrid:GridContainer = $GridContainer

func _ready():
#	inventory.itemInInventory.resize(inventory.maxInventory)
	inventory.init_inventory()
	for slot in inventory.maxInventory:
		var newItemDisplay = ItemDisplay.instance()
		newItemDisplay.name = "slot"+str(1000+slot)
		inventoryGrid.add_child(newItemDisplay)
	print(inventory.itemInInventory.size())	
	update_Display()
	pass

func update_Display():
	var arrayInventory = inventory.itemInInventory
	var textureRect:TextureRect
	var index = 0
	if inventory.itemInInventory.empty():
		print("empty")
		return
	for slot in  inventoryGrid.get_children():
		if index>inventory.itemInInventory.size()-1:
			return
		if inventory.itemInInventory[index] != null :
			print(slot.name)
			slot.get_child(0).texture = inventory.itemInInventory[index].texture
		else:
			pass
		index += 1
	pass
	print("updated")

