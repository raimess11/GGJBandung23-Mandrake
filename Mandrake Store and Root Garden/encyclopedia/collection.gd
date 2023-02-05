extends Resource
class_name collection

export(Array, Dictionary) var NPCDictionarys = [{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Meeted":false,"Encounters":0}]
export(Array, Dictionary) var RootsDictionarys = [{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0},{"Name":"","Description":"","TextureURL":"","Founded":false,"Encounters":0}]


func findRootsFromName(name) -> Dictionary:
	for item in RootsDictionarys:
		if item["Name"] == name:
			return item
	return {}

func findNPCFromName(name) -> Dictionary:
	for item in NPCDictionarys:
		if item["Name"] == name:
			return item
	return {}

