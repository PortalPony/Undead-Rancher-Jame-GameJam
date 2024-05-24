extends AnimalPart

class_name AnimalHead
var noEyes: int
var noEars: int

func _init(_animal: String, _value:int, _noEyes: int, _noEars: int, _imagePath: String):
	self.animal = _animal
	self.value = _value
	self.noEyes = _noEyes
	self.noEars = _noEars
	self.imagePath = _imagePath

func getNoEyes():
	return self.noEyes
	
func getNoEars():
	return self.noEars
	
func _to_string():
	var string = ("A head that belongs to a " + self.animal)
	return string

