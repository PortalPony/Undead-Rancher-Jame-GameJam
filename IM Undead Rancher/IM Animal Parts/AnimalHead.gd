extends AnimalPart

class_name AnimalHead
var noEyes: int
var noEars: int

func _init(animal: String, value:int, noEyes: int, noEars: int):
	self.animal = animal
	self.value = value
	self.noEyes = noEyes
	self.noEars = noEars

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), str(self.noEyes), str(self.noEars)]



