extends KinematicBody2D

var velocity = Vector2.ZERO

export var jump_velocity = 1500.0
export var gravity_scale = 20.0

func _physics_process(delta):
	velocity.y += gravity_scale	
	move_and_slide(velocity)
	if Input.is_action_pressed("Jump"):
		if is_on_floor():
			velocity -= jump_velocity
		
#func _input(event):
#	velocity = Vector2.ZERO
#	if event.is_action_pressed("Jump"):
#		velocity.y-=jump_velocity
