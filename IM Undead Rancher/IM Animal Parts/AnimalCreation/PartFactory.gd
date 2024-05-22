extends Node
class_name PartFactory

@onready var AH = preload("res://IM Animal Parts/AnimalCreation/AnimalHead.gd")
@onready var AB = preload("res://IM Animal Parts/AnimalCreation/AnimalBody.gd")
@onready var AL = preload("res://IM Animal Parts/AnimalCreation/AnimalLegs.gd")

var partsData = {}

var animalHeads = []
var animalBodies = []
var animalLegs = []

func _ready():
	loadPartsData()
	createParts()
	return partsData
	

func loadPartsData():
	partsData= loadJson("res://IM Animal Parts/JSONs/parts.json")

	
func loadJson(path: String) -> Dictionary:
	var fileContents = FileAccess.get_file_as_string(path)
	var data = JSON.parse_string(fileContents)
	return data
	
func createParts():
	createHeads()
	createBodies()
	createLegs()
			
func createHeads():
	print("Creating head parts...")
	for head in partsData["heads"]:
		print("Creating head: ",head["animal"],"...")
		var newHead = AH.new(head["animal"], head["value"], head["noEyes"], head["noEars"], head["imagePath"])
		animalHeads.append(newHead)
		
func createBodies():
	print("Creating body parts...")
	for body in partsData["bodies"]:
		print("Creating body: ",body["animal"],"...")
		var newBody = AB.new(body["animal"], body["value"], body["size"], body["imagePath"])
		animalBodies.append(newBody)
		
func createLegs():
	print("Creating leg parts...")
	for leg in partsData["legs"]:
		print("Creating legs: ",leg["animal"],"...")
		var newLeg = AL.new(leg["animal"], leg["value"], leg["feetType"], leg["speed"], leg["imagePath"])
		animalLegs.append(newLeg)

func getHeads():
	return animalHeads

func getBodies():
	return animalBodies
	
func getLegs():
	return animalLegs
