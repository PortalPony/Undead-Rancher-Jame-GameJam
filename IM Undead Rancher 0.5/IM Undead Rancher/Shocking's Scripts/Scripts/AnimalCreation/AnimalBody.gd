extends AnimalPart

class_name AnimalBody
var size: int

func _init(_animal: String, _value:int, _size: int, _imagePath: String):
	self.animal = _animal
	self.value = _value
	self.size = _size
	self.imagePath = _imagePath

func getSize():
	return self.size
	
func _to_string():
	var string = ("A body that belongs to a " + self.animal)
	return string
