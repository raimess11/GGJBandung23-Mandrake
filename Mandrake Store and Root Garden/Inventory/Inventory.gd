extends Node2D


var inventory = preload("res://Inventory/MainInventory.tres")
var displaySlot = preload("res://Inventory/InventorySlotDisplay.tscn")

onready var inventoryGrid = $GridContainer

func _ready():
	inventory.connect("inventoryChanged", self, "_on_inventory_changes")
	update_inventory_display()
	
func update_inventory_display():
	for slot_index in inventory.rootsesInInventory.size():
		update_inventory_display_slot_display(slot_index)
		
func update_inventory_display_slot_display(slot_index):
	if inventoryGrid.get_child_count() < slot_index + 1:
		var newDisplaySlot = displaySlot.instance()
		newDisplaySlot.name = "slot"+str(1000+slot_index)
		inventoryGrid.add_child(newDisplaySlot,true)
	var inventorySlotDisplay = inventoryGrid.get_child(slot_index)
	var slot = inventory.rootsesInInventory[slot_index]
	inventorySlotDisplay.display_roots(slot)
	
func _on_inventory_changes(indexes):
	for roots_index in indexes:
		update_inventory_display_slot_display(roots_index)
