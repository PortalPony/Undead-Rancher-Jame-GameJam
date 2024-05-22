extends Node
class_name Animal

@onready var AH = preload("res://IM Animal Parts/AnimalHead.gd")
@onready var AB = preload("res://IM Animal Parts/AnimalBody.gd")
@onready var AL = preload("res://IM Animal Parts/AnimalLegs.gd")


var head: AnimalHead
var body: AnimalBody
var legs: AnimalLegs

func _init(head: AnimalHead, body: AnimalBody, legs: AnimalLegs):
	self.head = head
	self.body = body
	self.legs = legs

func articulate():
	print("Hello!")
	
