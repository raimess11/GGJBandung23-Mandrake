extends HBoxContainer

var inventory = preload("res://gathering/GatheringBasket.tres")

func _ready():
	inventory.connect("inventoryChanged", self, "_on_inventory_changes")
	update_inventory_display()
	
func update_inventory_display():
	for roots_index in inventory.rootsesInInventory.size():
		update_inventory_display_slot_display(roots_index)
		
func update_inventory_display_slot_display(roots_index):
	var inventorySlotDisplay = get_child(roots_index)
	var roots = inventory.rootsesInInventory[roots_index]
	inventorySlotDisplay.display_roots(roots)
	
func _on_inventory_changes(indexes):
	for roots_index in indexes:
		update_inventory_display_slot_display(roots_index)
