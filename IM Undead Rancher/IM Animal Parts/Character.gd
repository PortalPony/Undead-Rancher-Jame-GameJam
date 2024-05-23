extends Control
 
@onready var Intelligence = %Intelligence
 
func calculate():
	var sum = 0
 
	for i in get_children():
		sum += i.get_Intelligence()
 
	Intelligence.text = str(sum)
 
