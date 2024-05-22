extends Node
class_name PartFactory

@onready var AH = preload("res://IM Animal Parts/AnimalCreation/AnimalHead.gd")
@onready var AB = preload("res://IM Animal Parts/AnimalCreation/AnimalBody.gd")
@onready var AL = preload("res://IM Animal Parts/AnimalCreation/AnimalLegs.gd")

@export var part_scene: PackedScene

var partsData = {}
var animalHeads = {}
var animalBodies = {}
var animalLegs = {}

func _ready():
	loadPartsData()
	createParts()
	print(animalHeads)

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
	var dictID = 0
	print("Creating head parts...")
	for head in partsData["heads"]:
		print("Creating head: ",head["animal"],"...")
		var newHead = AH.new(head["animal"], head["value"], head["noEyes"], head["noEars"], head["imagePath"])
		animalHeads[dictID] = newHead
		dictID += 1
		
func createBodies():
	var dictID = 0
	print("Creating body parts...")
	for body in partsData["bodies"]:
		print("Creating body: ",body["animal"],"...")
		var newBody = AB.new(body["animal"], body["value"], body["size"], body["imagePath"])
		animalBodies[dictID] = newBody
		dictID += 1
		
func createLegs():
	var dictID = 0
	print("Creating leg parts...")
	for leg in partsData["legs"]:
		print("Creating legs: ",leg["animal"],"...")
		var newLegs = AL.new(leg["animal"], leg["value"], leg["feetType"], leg["speed"], leg["imagePath"])
		animalLegs[dictID] = newLegs
		dictID += 1

func getHeads():
	return animalHeads

func getBodies():
	return animalBodies
	
func getLegs():
	return animalLegs

func getID(animalName: String):
	for key in animalHeads:
		if animalHeads[key].getAnimalName() == animalName.to_lower():
			return key
		else:
			print("Not a valid animal!")
			return ""
			
func getName(ID: int):
	return animalHeads[ID].getAnimalName()

func getExactHead(ID: int):
	return animalHeads[ID]

func getExactBody(ID: int):
	return animalBodies[ID]

func getExactLegs(ID: int):
	return animalLegs[ID]
