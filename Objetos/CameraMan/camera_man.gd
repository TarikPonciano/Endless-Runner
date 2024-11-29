extends CharacterBody2D


var SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var camera = get_node("Camera2D")


func _physics_process(delta: float) -> void:
	velocity.x = SPEED

	move_and_slide()
