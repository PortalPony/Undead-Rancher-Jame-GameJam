extends Node2D


@onready var player = get_tree().get_first_node_in_group("player")
@onready var shop = $"Shop Screen"

@onready var traderDiaglog = $"Shop Screen/Trader's Dialog"
@onready var sprite = $"Shop Screen/Trader's Sprites"


var texture_2d := Texture.new()

var emoTraderSprite = preload("res://Chrisp/IM Chrisp's Traders/Emo Trader.webp")
var SpiderGuy = preload("res://Chrisp/IM Chrisp's Traders/Spider Guy.webp") 
var chooseRandomTrader = randi_range(1,100)

var canShop = false



func _process(delta):
	
	if canShop == true:
		if Input.is_action_just_pressed("Action"):
			randomTrader()
			if shop.visible == false:
				shop.show()
			elif shop.visible == true:
				shop.hide()
		
		


func _on_area_2d_body_entered(body):
	if body == player:
		canShop = true # Replace with function body.


func _on_area_2d_body_exited(body):
	
	if body == player:
		shop.hide()
		canShop = false # Replace with function body.

func randomTrader():
	chooseRandomTrader = randi_range(1,100)
	
	
	if chooseRandomTrader <= 50:
		sprite.frame = 0
		traderDiaglog.text = "This is test for Spider Guy"
	if chooseRandomTrader >= 50:
		sprite.frame = 1
		traderDiaglog.text = "This is test for Emo Trader: Life's a web of chaos. Got any creatures that embody that?"
	


