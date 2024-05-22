extends Node

var parts_data = {}

func _ready():
	load_parts_data()

func load_parts_data():
	parts_data["heads"] = load_json("res://IM Animal Parts/JSONs/heads.json")
	parts_data["bodies"] = load_json("res://IM Animal Parts/JSONs/bodies.json")
	parts_data["legs"] = load_json("res://IM Animal Parts/JSONs/legs.json")
	print(parts_data["heads"])
	print(parts_data["bodies"])
	print(parts_data["legs"])
	
func load_json(path: String) -> Dictionary:
	var fileContents = FileAccess.get_file_as_string(path)
	var data = JSON.parse_string(fileContents)
	return data
	

