extends Button

var nameRoots = "LOCKED"
var textureURL = ""

func _ready():
	$Title.text = nameRoots
	if textureURL != "":
		var img = load(textureURL)
		$Panel/TextureRect.texture = img


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
