extends AnimalPart

class_name AnimalLegs
var feetType: String
var speed: int

func _init(_animal: String, _value:int, _feetType: String, _speed: int):
	self.animal = _animal
	self.value = _value
	self.feetType = _feetType
	self.speed = _speed

func describe():
	var description: String
	description = "Hello %s, with %d and %f with %g!" % [self.animal, str(self.value), feetType, str(self.speed)]
	print(description)
