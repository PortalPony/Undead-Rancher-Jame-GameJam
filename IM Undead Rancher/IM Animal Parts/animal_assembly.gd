extends Node2D

@onready var leg = preload("res://IM Animal Parts/leg.tscn")
@onready var head = preload("res://IM Animal Parts/head.tscn")
@onready var body = preload("res://IM Animal Parts/body.tscn")

var partHolding
var holding = false

var legInstantiate
var headInstantiate
var bodyInstantiate
# Called when the node enters the scene tree for the first time.
func _ready():
	legInstantiate = leg.instantiate()
	headInstantiate = head.instantiate()
	bodyInstantiate = body.instantiate()
	
	headInstantiate.position = Vector2(150, -70)
	legInstantiate.position = Vector2(100, 50)
	
	get_parent().add_sibling(legInstantiate)
	
	get_parent().add_sibling(headInstantiate)
	
	get_parent().add_sibling(bodyInstantiate)
	print_debug(legInstantiate.position) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if holding == true:
		partHolding.position = get_global_mouse_position()
		if Input.is_action_just_pressed("Left Click"):
			holding = false

func bodyPlacement():
	bodyInstantiate = body.instantiate()
	get_parent().add_sibling(bodyInstantiate)
	bodyInstantiate.position = get_global_mouse_position()
	partHolding = bodyInstantiate
	holding = true


func headPlacement():
	headInstantiate = head.instantiate()
	get_parent().add_sibling(headInstantiate)
	headInstantiate.position = get_global_mouse_position()
	partHolding = headInstantiate
	holding = true



func legPlacement():
	legInstantiate = leg.instantiate()
	get_parent().add_sibling(legInstantiate)
	legInstantiate.position = get_global_mouse_position()
	partHolding = legInstantiate
	holding = true


func _on_button_pressed():
	legPlacement() # Replace with function body.



func _on_head_button_pressed():
	headPlacement() # Replace with function body.



func _on_body_button_pressed():
	bodyPlacement() # Replace with function body.
