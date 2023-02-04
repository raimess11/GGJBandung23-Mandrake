extends Resource
class_name Slots

signal inventoryChanged(indexes)

export(Array, Resource) var rootsesInInventory = [
	null, null, null, null, null, null, null, null, null, null, null, null
]

export(int) var maxInventory = 12

##masukan roots ke dalam inventory
#func set_roots(roots_index,roots):
#	var previousRoots = rootsesInInventory[roots_index]
#	#syarat mystical masuk ke inventory: harus mempunyai dua slot yang kosong, hover pada slot yang awal
#	if roots.mytical and rootsesInInventory[roots_index + 1] == null:
#		var i = roots_index + 1
#		maxInventory -= 1
#		while i < maxInventory:
#			rootsesInInventory[i] = rootsesInInventory[i + 1]
#			i += 1
#		rootsesInInventory[roots_index] = roots
#		rootsesInInventory.pop_back()
#	#jika tidak memenuhi syarat, maka akan return (idk what to do here)
#	elif rootsesInInventory[roots_index + 1] != null:
#		return
#	else:
#		rootsesInInventory[roots_index] = roots
#	emit_signal("inventoryChanged", [roots_index])
#	return previousRoots
#
##tukar menukar roots di inventory
#func swap_roots(roots_index, target_roots_index):
#	var targetRoots = rootsesInInventory[target_roots_index]
#	var roots = rootsesInInventory[roots_index]
#	rootsesInInventory[target_roots_index] = roots
#	rootsesInInventory[roots_index] = targetRoots
#	emit_signal("inventoryChanged", [roots_index, target_roots_index])
#
##hapus roots dari inventory
#func remove_roots(roots_index):
#	var previousRoots = rootsesInInventory[roots_index]
#	if previousRoots.mytical:
#		rootsesInInventory.push_back(null)
#		var i = roots_index + 1
#		while i < maxInventory:
#			rootsesInInventory[i + 1] = rootsesInInventory[i]
#			i += 1
#		maxInventory += 1
#		rootsesInInventory[roots_index + 1] = null
#	rootsesInInventory[roots_index] = null
#	emit_signal("inventoryChanged", [roots_index])
#	return previousRoots
