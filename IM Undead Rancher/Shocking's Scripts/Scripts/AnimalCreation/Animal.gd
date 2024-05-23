class_name Animal

var head: AnimalHead
var body: AnimalBody
var legs: AnimalLegs

func _init(_head: AnimalHead, _body: AnimalBody, _legs: AnimalLegs):
	self.head = _head
	self.body = _body
	self.legs = _legs

func _to_string():
	var string = ("An animal with " +self.head.to_string().to_lower()+", "+self.body.to_string().to_lower()+", "+self.legs.to_string().to_lower())
	return string
	
func getTotalValue():
	return self.head.getValue() + self.body.getValue() + self.legs.getValue()
	
func isHybrid():
	if(self.head.getAnimalName() == self.body.getAnimalName() && self.body.getAnimalName() == self.legs.getAnimalName()):
		return false
	else:
		return true
