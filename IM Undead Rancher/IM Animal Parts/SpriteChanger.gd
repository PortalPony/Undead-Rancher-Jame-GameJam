extends Sprite2D

@export var texturePath: String
# Function to change the sprite texture
func changeTexture(texturePath: String):
	var newTexture = load(texturePath)
	if newTexture:
		print("Texture loaded successfully: ", texturePath)
		self.texture = newTexture
	else:
		print("Error loading texture:", texturePath)
