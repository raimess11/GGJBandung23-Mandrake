extends CanvasLayer

var phase = 0 setget phaseChange
var lowPrice = 0 setget setLowPrice
var highPrice = 0 setget setHighPrice
var bargainMoney = 0
var normalPrice = 0

#phase 0 : player nentukan high price
#phase 1 : customor bargain
#phase 2 : player choose action
#phase 3 : custumor decision

onready var amount = $TextureRect/HBoxContainer/Amount
onready var slider = $TextureRect/Slider

func _ready():
	$TextureRect/Slider.min_value = normalPrice*($TextureRect/Slider.min_value/100)
	$TextureRect/Slider.max_value = normalPrice*($TextureRect/Slider.max_value/100)

func setLowPrice(value):
	print(value)
	lowPrice = value
	$"TextureRect/low price/Amount".text = str(int(value))
	
func setHighPrice(value):
	print(value)
	highPrice = value
	$"TextureRect/high price/Amount".text = str(value)

func phaseChange(value):
	#randomize
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	print(value)
	phase = value
	if phase == 0:
		pass
	elif phase == 1:
		#Customor memberikan low price range in normal price / (random from 1 to 2 {float} ) to high price
		self.lowPrice = normalPrice/(rng.randf_range(1.00,2.00))
		#jika low price >= high price * 0.8, BERHASIL
		if (lowPrice) >= (highPrice*0.8):
			bargainAccepted()
		else:
			#untuk enable button cancel
			$TextureRect/Cancel.visible = true
	elif phase == 2:
		#Menerima low price yang di berikan customer
		if bargainMoney == lowPrice:
			bargainAccepted()
		#Jika penawaran diatas high price, GAGAL
		elif bargainMoney > highPrice:
			bargainFailed()
		#ika dibawah high price, Customor memberikan low price range in mean(low price, high price) / (random from 1 to 3 {float} ) to high price
		elif bargainMoney < highPrice:
			self.lowPrice = ((lowPrice+highPrice)/2)/rng.randf_range(1.00,3.00)
			slider.value = lowPrice
			#jika low price >= high price * 0.8, BERHASIL
			if (lowPrice) >= (highPrice*0.8):
				bargainAccepted()
			else:
				#maju ke phase 3
				phaseChange(value+1)
	elif phase == 3:
		#Customer randomly, accept price(BERHASIL) or cancle order(GAGAL) if high price / low price > 5/3
		if (highPrice/lowPrice) < 5/3:
			if rng.randi_range(0,1):
				bargainAccepted()
			else:
				bargainFailed()
		else:
			#else kembali ke step 3
			phaseChange(2)
	

func _on_Slider_value_changed(value):
	amount.text = str(value)



func _on_Deal_pressed():
	bargainMoney = int(amount.text)
	#Player nentukan high price 
	if phase == 0:
		self.highPrice = bargainMoney
	self.phase += 1
	
func bargainAccepted():
	print("bargain accepted")
	pass

func bargainFailed():
	print("bargain failed")
	pass

func _on_Cancel_pressed():
	bargainFailed()
