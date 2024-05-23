extends PartFactory

@export var animalfactory_scene: PackedScene

@onready var animalTemplate = preload("res://IM Animal Parts/AnimalTemplate.tscn")
@onready var legs = preload("res://IM Animal Parts/leg.tscn")
@onready var head = preload("res://IM Animal Parts/head.tscn")
@onready var body = preload("res://IM Animal Parts/body.tscn")

func CreateNewAnimal(desiredHead: String, desiredBody: String, desiredLegs: String):
	#Collect all the parts that are desired and create animal
	var newHead = getExactHead(getID(desiredHead))
	var newBody = getExactBody(getID(desiredBody))
	var newLegs = getExactLegs(getID(desiredLegs))
	var newAnimal = Animal.new(newHead, newBody, newLegs)
	
	CreateAnimalInstance(newAnimal)
	
	
func CreateAnimalInstance(animal):
	var newAnimalObject = animalTemplate.instantiate()
	
	var newHeadObject = head.instantiate()
	var newBodyObject = body.instantiate()
	var newLegsObject = legs.instantiate()
	
	newAnimalObject.add_child(newHeadObject)
	newAnimalObject.add_child(newBodyObject)
	newAnimalObject.add_child(newLegsObject)
	
	add_child(newAnimalObject)
	
	SetAnimalSprites(animal, newHeadObject, newBodyObject, newLegsObject)
	
func SetAnimalSprites(animal, headObject, bodyObject, legsObject):
	headObject.changeTexture(animal.head.getImagePath())
	bodyObject.changeTexture(animal.body.getImagePath())
	legsObject.changeTexture(animal.legs.getImagePath())
	
	
