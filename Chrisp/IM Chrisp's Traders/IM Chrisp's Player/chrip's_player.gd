extends CharacterBody2D


const SPEED = 100.0

func _physics_process(delta):
	
	var directionUpandDown = Input.get_axis("Up", "Down")
	if directionUpandDown:
		velocity.y = directionUpandDown * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	
	var direction = Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
