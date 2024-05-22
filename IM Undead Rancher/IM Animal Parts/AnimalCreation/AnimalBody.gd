extends AnimalPart

class_name AnimalBody
var size: int

func _init(_animal: String, _value:int, _size: int):
	self.animal = _animal
	self.value = _value
	self.size = _size

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), str(self.size)]
	print(description)
