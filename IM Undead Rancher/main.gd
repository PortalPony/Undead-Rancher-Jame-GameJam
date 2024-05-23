extends Node2D

@onready var leg = preload("res://IM Animal Parts/leg.tscn")
@onready var head = preload("res://IM Animal Parts/head.tscn")
@onready var body = preload("res://IM Animal Parts/body.tscn")

var partsData = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	
	createMyAnimal()
	
#SHOWING YOU HOW TO USE FACTORY METHODS TO GENERATE YOUR ANIMAL!
func createMyAnimal():
	var the_head_i_want = Factory.getExactHead(0) #I want the head of animal ID 0 (dog)
	var the_body_i_want = Factory.getExactBody(0) #I want the body of animal ID 0 (dog)
	var the_legs_i_want = Factory.getExactLegs(0) #I want the legs of animal ID 0 (dog)
	
	#I instantiate with the format (HEAD, BODY, LEGS)
	var my_New_Animal = Animal.new(the_head_i_want, the_body_i_want, the_legs_i_want)
	
	#I instantiate the template objects
	var my_Example_Head_Sprite = head.instantiate()
	var my_Example_Body_Sprite = body.instantiate()
	var my_Example_Legs_Sprite = leg.instantiate()
	
	#I set the template objects to the texture of the animal i made
	my_Example_Head_Sprite.changeTexture(my_New_Animal.head.getImagePath())
	my_Example_Body_Sprite.changeTexture(my_New_Animal.body.getImagePath())
	my_Example_Legs_Sprite.changeTexture(my_New_Animal.legs.getImagePath())
	
	#I add the objects to the scene
	add_child(my_Example_Head_Sprite)
	add_child(my_Example_Body_Sprite)
	add_child(my_Example_Legs_Sprite)
	
	#I should set each sprite to an anchor point relative to each other;
	#for example the body at 0,0 and then the head at body.headAnchor
	#and the legs at body.legsAnchor.. but i think this can be done without code?
	
	
