extends TextureRect

@export var slot_type: int = 0
@onready var property: Dictionary = {
	"TEXTURE": texture,
	"Intelligence": Intelligence,
	"SLOT_TYPE": slot_type,
	"Perception": Perception,
	"Hearing": Hearing,
	"Balance": Balance,
	"Speech": Speech,
	"Bite": Bite,
	"Endurance": Endurance,
	"Breath_Underwater": Breath_Underwater,
	"Stamina": Stamina,
	"Strength": Strength,
	"Dexterity": Dexterity,
	"Speed": Speed,
	"Jump": Jump,
	"Stealth": Stealth,
	"Constitution": Constitution,
	"Poison_Resistance": Poison_Resistance,
	"Armor": Armor,
	"Camouflage": Camouflage,
	"Regeneration": Regeneration,
	"Horn_Attack": Horn_Attack,
	"Horn_Defense": Horn_Defense,
	"Intimidation": Intimidation,
	"Flight": Flight,
	"Glide": Glide,
	"Wind_Control": Wind_Control,
	"Claw_Attack": Claw_Attack,
	"Grip": Grip,
	"Digging": Digging }:
	set(value):
		property = value
		texture = property["TEXTURE"]
		Intelligence = property["Intelligence"]
		slot_type = property["SLOT_TYPE"]
		Perception = property["Perception"]
		Hearing = property["Hearing"]
		Balance = property["Balance"]
		Speech = property["Speech"]
		Bite = property["Bite"]
		Endurance = property["Endurance"]
		Breath_Underwater = property["Breath_Underwater"]
		Stamina = property["Stamina"]
		Strength = property["Strength"]
		Dexterity = property["Dexterity"]
		Speed = property["Speed"]
		Jump = property["Jump"]
		Stealth = property["Stealth"]
		Constitution = property["Constitution"]
		Poison_Resistance = property["Poison_Resistance"]
		Armor = property["Armor"]
		Camouflage = property["Camouflage"]
		Regeneration = property["Regeneration"]
		Horn_Attack = property["Horn_Attack"]
		Horn_Defense = property["Horn_Defense"]
		Intimidation = property["Intimidation"]
		Flight = property["Flight"]
		Glide = property["Glide"]
		Wind_Control = property["Wind_Control"]
		Claw_Attack = property["Claw_Attack"]
		Grip = property["Grip"]
		Digging = property["Digging"]

# Head/Brain
@export var Intelligence = 0:
	set (value):
		Intelligence = value
		property["Intelligence"] = Intelligence
		%debug.text = str(Intelligence)
		if get_parent() is PassiveSlot:
			get_parent().get_parent().calculate()

# Eyes
@export var Perception = 0:
	set (value):
		Perception = value
		property["Perception"] = Perception
		%debug.text = str(Perception)

# Ears
@export var Hearing = 0:
	set (value):
		Hearing = value
		property["Hearing"] = Hearing
		%debug.text = str(Hearing)

@export var Balance = 0:
	set (value):
		Balance = value
		property["Balance"] = Balance
		%debug.text = str(Balance)

# Mouth/Teeth
@export var Speech = 0:
	set (value):
		Speech = value
		property["Speech"] = Speech
		%debug.text = str(Speech)

@export var Bite = 0:
	set (value):
		Bite = value
		property["Bite"] = Bite
		%debug.text = str(Bite)

# Heart
@export var Endurance = 0:
	set (value):
		Endurance = value
		property["Endurance"] = Endurance
		%debug.text = str(Endurance)

# Lungs
@export var Breath_Underwater = 0:
	set (value):
		Breath_Underwater = value
		property["Breath_Underwater"] = Breath_Underwater
		%debug.text = str(Breath_Underwater)

@export var Stamina = 0:
	set (value):
		Stamina = value
		property["Stamina"] = Stamina
		%debug.text = str(Stamina)

# Arms/Hands
@export var Strength = 0:
	set (value):
		Strength = value
		property["Strength"] = Strength
		%debug.text = str(Strength)

@export var Dexterity = 0:
	set (value):
		Dexterity = value
		property["Dexterity"] = Dexterity
		%debug.text = str(Dexterity)

# Legs/Feet
@export var Speed = 0:
	set (value):
		Speed = value
		property["Speed"] = Speed
		%debug.text = str(Speed)

@export var Jump = 0:
	set (value):
		Jump = value
		property["Jump"] = Jump
		%debug.text = str(Jump)

@export var Stealth = 0:
	set (value):
		Stealth = value
		property["Stealth"] = Stealth
		%debug.text = str(Stealth)

# Torso/Body
@export var Constitution = 0:
	set (value):
		Constitution = value
		property["Constitution"] = Constitution
		%debug.text = str(Constitution)

@export var Poison_Resistance = 0:
	set (value):
		Poison_Resistance = value
		property["Poison_Resistance"] = Poison_Resistance
		%debug.text = str(Poison_Resistance)

# Skin
@export var Armor = 0:
	set (value):
		Armor = value
		property["Armor"] = Armor
		%debug.text = str(Armor)

@export var Camouflage = 0:
	set (value):
		Camouflage = value
		property["Camouflage"] = Camouflage
		%debug.text = str(Camouflage)

@export var Regeneration = 0:
	set (value):
		Regeneration = value
		property["Regeneration"] = Regeneration
		%debug.text = str(Regeneration)

# Horns/Antlers
@export var Horn_Attack = 0:
	set (value):
		Horn_Attack = value
		property["Horn_Attack"] = Horn_Attack
		%debug.text = str(Horn_Attack)

@export var Horn_Defense = 0:
	set (value):
		Horn_Defense = value
		property["Horn_Defense"] = Horn_Defense
		%debug.text = str(Horn_Defense)

@export var Intimidation = 0:
	set (value):
		Intimidation = value
		property["Intimidation"] = Intimidation
		%debug.text = str(Intimidation)

# Wings
@export var Flight = 0:
	set (value):
		Flight = value
		property["Flight"] = Flight
		%debug.text = str(Flight)

@export var Glide = 0:
	set (value):
		Glide = value
		property["Glide"] = Glide
		%debug.text = str(Glide)

@export var Wind_Control = 0:
	set (value):
		Wind_Control = value
		property["Wind_Control"] = Wind_Control
		%debug.text = str(Wind_Control)

# Claws/Hooves
@export var Claw_Attack = 0:
	set (value):
		Claw_Attack = value
		property["Claw_Attack"] = Claw_Attack
		%debug.text = str(Claw_Attack)

@export var Grip = 0:
	set (value):
		Grip = value
		property["Grip"] = Grip
		%debug.text = str(Grip)

@export var Digging = 0:
	set (value):
		Digging = value
		property["Digging"] = Digging
		%debug.text = str(Digging)
