extends TextureRect

#untuk set dialog di luar class ini
var customerName = "" setget setCustomerName
var customerDialouge = "" setget setCustomerDialouge

func setCustomerName(value):
	$CustomerName.text = value
	customerName = value
	
func setCustomerDialouge(value):
	$CustomerDialouge.text = value
	customerDialouge = value

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Accept_pressed():
	$Accept.visible = false
	$Decline.visible = false
	$Next.visible = true


func _on_Decline_pressed():
	$Accept.visible = false
	$Decline.visible = false
	$Next.visible = true


func _on_Next_pressed():
	pass # Replace with function body.
