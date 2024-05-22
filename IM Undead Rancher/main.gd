extends Node2D

@onready var PF = preload("res://IM Animal Parts/AnimalCreation/PartFactory.gd")

var partsData = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	var factory = PF.new()
	partsData = factory._ready()
	
	var heads = factory.getHeads()
	var bodies = factory.getBodies()
	var legs = factory.getLegs()
	
	var myAnimal = Animal.new(heads[0], bodies[0], legs[0])
	
	print(myAnimal)
	
	
