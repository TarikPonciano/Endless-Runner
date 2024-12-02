extends CharacterBody2D


var SPEED = Global.velocidade_global


func _physics_process(delta: float) -> void:

	
	velocity.x = Global.velocidade_global
	
	move_and_slide()
