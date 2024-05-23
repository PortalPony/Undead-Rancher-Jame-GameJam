extends PanelContainer
class_name Slot

# Reference to the TextureRect node within this PanelContainer
@onready var texture_rect = $TextureRect
@export_enum("NONE:0","HEAD:1","BODY:2","LEG:3","ACTIVE:4") var slot_type: int
# Boolean flag indicating if the texture_rect is filled
var filled : bool = false

# Called when drag data is requested from this node
func _get_drag_data(at_position):
	# Set the drag preview to show a small version of the current texture
	set_drag_preview(get_preview())
	# Return the texture_rect node as the drag data
	return texture_rect

# Called to check if the dropped data can be accepted by this node
func _can_drop_data(_pos, data):
	# Allow drop only if the data is of type TextureRect
	return data is TextureRect

# Called when data is dropped onto this node
func _drop_data(_pos, data):
	# Swap the property of the current texture_rect with the dropped data's property
	var temp = texture_rect.property
	texture_rect.property = data.property
	data.property = temp

# Helper function to create a small preview of the current texture
func get_preview():
	var preview_texture = TextureRect.new()
	# Set the preview texture to the current texture
	preview_texture.texture = texture_rect.texture
	# Set the expand mode to cover the entire preview area
	preview_texture.expand_mode = 1
	# Set the size of the preview texture
	preview_texture.size = Vector2(30,30)
	
	# Create a new Control node to hold the preview texture
	var preview = Control.new()
	preview.add_child(preview_texture)
	# Return the preview Control node
	return preview

# Getter function to retrieve the Intelligence property of the texture_rect
func get_Intelligence():
	return texture_rect.Intelligence

# Getter function to retrieve the Perception property of the texture_rect
func get_Perception():
	return texture_rect.Perception

# Getter function to retrieve the Hearing property of the texture_rect
func get_Hearing():
	return texture_rect.Hearing

# Getter function to retrieve the Balance property of the texture_rect
func get_Balance():
	return texture_rect.Balance

# Getter function to retrieve the Speech property of the texture_rect
func get_Speech():
	return texture_rect.Speech

# Getter function to retrieve the Bite property of the texture_rect
func get_Bite():
	return texture_rect.Bite

# Getter function to retrieve the Endurance property of the texture_rect
func get_Endurance():
	return texture_rect.Endurance

# Getter function to retrieve the Breath_Underwater property of the texture_rect
func get_Breath_Underwater():
	return texture_rect.Breath_Underwater

# Getter function to retrieve the Stamina property of the texture_rect
func get_Stamina():
	return texture_rect.Stamina

# Getter function to retrieve the Strength property of the texture_rect
func get_Strength():
	return texture_rect.Strength

# Getter function to retrieve the Dexterity property of the texture_rect
func get_Dexterity():
	return texture_rect.Dexterity

# Getter function to retrieve the Speed property of the texture_rect
func get_Speed():
	return texture_rect.Speed

# Getter function to retrieve the Jump property of the texture_rect
func get_Jump():
	return texture_rect.Jump

# Getter function to retrieve the Stealth property of the texture_rect
func get_Stealth():
	return texture_rect.Stealth

# Getter function to retrieve the Constitution property of the texture_rect
func get_Constitution():
	return texture_rect.Constitution

# Getter function to retrieve the Poison_Resistance property of the texture_rect
func get_Poison_Resistance():
	return texture_rect.Poison_Resistance

# Getter function to retrieve the Armor property of the texture_rect
func get_Armor():
	return texture_rect.Armor

# Getter function to retrieve the Camouflage property of the texture_rect
func get_Camouflage():
	return texture_rect.Camouflage

# Getter function to retrieve the Regeneration property of the texture_rect
func get_Regeneration():
	return texture_rect.Regeneration

# Getter function to retrieve the Horn_Attack property of the texture_rect
func get_Horn_Attack():
	return texture_rect.Horn_Attack

# Getter function to retrieve the Horn_Defense property of the texture_rect
func get_Horn_Defense():
	return texture_rect.Horn_Defense

# Getter function to retrieve the Intimidation property of the texture_rect
func get_Intimidation():
	return texture_rect.Intimidation

# Getter function to retrieve the Flight property of the texture_rect
func get_Flight():
	return texture_rect.Flight

# Getter function to retrieve the Glide property of the texture_rect
func get_Glide():
	return texture_rect.Glide

# Getter function to retrieve the Wind_Control property of the texture_rect
func get_Wind_Control():
	return texture_rect.Wind_Control

# Getter function to retrieve the Claw_Attack property of the texture_rect
func get_Claw_Attack():
	return texture_rect.Claw_Attack

# Getter function to retrieve the Grip property of the texture_rect
func get_Grip():
	return texture_rect.Grip

# Getter function to retrieve the Digging property of the texture_rect
func get_Digging():
	return texture_rect.Digging

# Setter function to update the properties of the texture_rect
func set_property(data):
	texture_rect.property = data
 
	# Update the filled flag based on whether the texture is null or not
	if data["TEXTURE"] == null:
		filled = false
	else:
		filled = true
