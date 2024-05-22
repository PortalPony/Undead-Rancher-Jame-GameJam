extends AnimalPart

class_name AnimalHead
var noEyes: int
var noEars: int

func _init(_animal: String, _value:int, _noEyes: int, _noEars: int):
	self.animal = _animal
	self.value = _value
	self.noEyes = _noEyes
	self.noEars = _noEars

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), str(self.noEyes), str(self.noEars)]
	print(description)


