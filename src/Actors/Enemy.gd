extends "res://src/Actors/Actor.gd"

#Run by gidou and looks at children and runs their children (top to bottom tree order)
func _ready() -> void:
	set_physics_process(false) #Deactivate enemy at te start of the game (so it doesnt atack when out of player view)
	_velocity.x = -speed.x #Going left (where player comes from)

func _on_StompDetector_body_entered(body: PhysicsBody2D) -> void:
	#If you try to stomp it from the bottom
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return
	get_node("CollisionShape2D").disabled = true
	queue_free()#Deletes Enemy

#Change direction when it touches the wall
func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y


