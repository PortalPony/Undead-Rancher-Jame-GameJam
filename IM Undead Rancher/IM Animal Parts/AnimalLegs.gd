extends AnimalPart

class_name AnimalLegs
var feetType: String
var speed: int

func _init(animal: String, value:int, feetType: String, speed: int):
	self.animal = animal
	self.value = value
	self.feetType = feetType
	self.speed = speed

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), feetType, str(self.speed)]

