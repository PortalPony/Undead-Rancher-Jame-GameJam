extends Node
@onready var A = preload("res://IM Animal Parts/AnimalCreation/Animal.gd")
@onready var AH = preload("res://IM Animal Parts/AnimalCreation/AnimalHead.gd")
@onready var AB = preload("res://IM Animal Parts/AnimalCreation/AnimalBody.gd")
@onready var AL = preload("res://IM Animal Parts/AnimalCreation/AnimalLegs.gd")
@onready var PF = preload("res://IM Animal Parts/AnimalCreation/PartFactory.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	var head = AH.new("Dog", 1, 2, 2)
	var body = AB.new("T-Rex", 5, 5)
	var legs = AL.new("Cat",1, "Paws", 5)
	
	var animal = A.new(head, body, legs)
	
	print(animal.articulate())
	
	var factory = PF.new()
	factory._ready()
	
