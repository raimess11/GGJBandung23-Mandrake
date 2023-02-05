extends Resource

onready var itemTres = preload("res://Commponent/Inventory/item/item.tres")

export(Array, Resource) var itemInInventory = []
export(int) var maxInventory = 12

func item_sortbyname(item):
	if item == null:
		return ""
	return item.name

func init_inventory():
	itemInInventory.resize(maxInventory)
	itemInInventory.fill(itemTres)

#menambah data
func add_item(item):
	if itemInInventory.size() < maxInventory:
		itemInInventory.append(item)
#		itemInInventory.resize(maxInventory)

#menghapus data
func remove_item(item):
	if not itemInInventory.empty():
		itemInInventory.remove(itemInInventory.find(item))
		itemInInventory.resize(maxInventory)
		itemInInventory.sort()
