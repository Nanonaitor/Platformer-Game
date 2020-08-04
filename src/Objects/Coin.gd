extends Area2D


onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

#Built in (specific to godo)
#func _ready()

func _on_body_entered(body: PhysicsBody2D) -> void:
	anim_player.play("fade_out")
