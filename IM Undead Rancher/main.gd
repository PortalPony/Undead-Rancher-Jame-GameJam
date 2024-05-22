extends Node
@onready var A = preload("res://IM Animal Parts/Animal.gd")
@onready var AH = preload("res://IM Animal Parts/AnimalHead.gd")
@onready var AB = preload("res://IM Animal Parts/AnimalBody.gd")
@onready var AL = preload("res://IM Animal Parts/AnimalLegs.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	var head = AH.instance()
	var body = AB.instance()
	var legs = AL.instance()
	
	var animal = A.instance()
	
	print(animal.articulate())
