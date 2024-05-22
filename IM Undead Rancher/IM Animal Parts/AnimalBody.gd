extends AnimalPart

class_name AnimalBody
var size: int

func _init(animal: String, value:int, size: int):
	self.animal = animal
	self.value = value
	self.size = size

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), str(self.size)]

