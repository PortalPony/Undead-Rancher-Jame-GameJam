extends Node2D

@onready var PF = preload("res://IM Animal Parts/AnimalCreation/PartFactory.gd")

var partsData = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	
	var heads = Factory.getHeads()
	var bodies = Factory.getBodies()
	var legs = Factory.getLegs()
	
	var myAnimal = Animal.new(heads[0], bodies[0], legs[0])
	
	print(myAnimal)
	print(myAnimal.isHybrid())
	
