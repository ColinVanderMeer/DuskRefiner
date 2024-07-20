extends CharacterBody3D

const SPEED = 2.0

@onready var nav_agent: NavigationAgent3D = $NavigationAgent3D

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_location()
	var new_velocity = (next_location - current_location).normalized() * SPEED
	
	velocity = new_velocity
	move_and_slide()
	
func update_target_location(target_location):
	nav_agent.set_target_location(target_location)
