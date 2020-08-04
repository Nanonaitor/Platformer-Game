extends KinematicBody2D
class_name Actor

var FLOOR_NORMAL= Vector2.UP

export var speed: = Vector2(300.0, 1000.0)
export var gravity: = 4000.0

var _velocity: = Vector2.ZERO

#Called 30-60 times per second (for physics objects/movers)

	#if _velocity.y > speed.y: #OR - _velocity.y = max(_velocity.y, speed.y)
	#	_velocity.y = speed.y
	
	#_velocity = move_and_slide(_velocity) #Not multiplying by delta cuz functions does so for us
	
