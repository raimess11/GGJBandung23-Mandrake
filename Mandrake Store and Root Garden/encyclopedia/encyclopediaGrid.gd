extends GridContainer

onready var encyclopedia = preload("res://encyclopedia/e.tres")

onready var slot = preload("res://encyclopedia/encyclopediaSlot.tscn")

func _ready():
	LoadEncyclopedia()
	pass

#yang ini masih untuk roots	
func LoadEncyclopedia():
	for item in encyclopedia.RootsDictionarys:
		var instanceSlot = slot.instance()
		instanceSlot.name = item["Name"]
		if item["Founded"]:
			instanceSlot.nameRoots = item["Name"]
			instanceSlot.textureURL = item["TextureURL"]
		self.add_child(instanceSlot)

