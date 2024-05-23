extends AnimalPart

class_name AnimalLegs
var feetType: String
var speed: int

func _init(_animal: String, _value:int, _feetType: String, _speed: int, _imagePath: String):
	self.animal = _animal
	self.value = _value
	self.feetType = _feetType
	self.speed = _speed
	self.imagePath = _imagePath

func getFeetType():
	return self.feetType

func getSpeed():
	return self.speed

func _to_string():
	var string = ("A set of legs that belongs to a " + self.animal)
	return string
