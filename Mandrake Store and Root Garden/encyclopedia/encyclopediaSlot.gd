extends Button

var nameRoots = "LOCKED"
var textureURL = ""
var founded = false

func _ready():
	$Title.text = nameRoots
	if textureURL != "":
		var img = load(textureURL)
		$Panel/TextureRect.texture = img
	disabled = !founded

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_encyclopediaSlot_pressed():
	EncyclopediaGlobalVar.setNameRoots(nameRoots)
	get_tree().change_scene("res://encyclopedia/encyclopediaPage.tscn")
