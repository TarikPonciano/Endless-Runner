extends CharacterBody2D


var SPEED = Global.velocidade_global
const JUMP_VELOCITY = -400.0
var morrendo = false
var pulo_duplo = false


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if morrendo == false:
		if not is_on_floor():
			velocity += get_gravity() * delta
			if Input.is_action_just_pressed("ui_accept") and pulo_duplo == true:
				velocity.y = JUMP_VELOCITY
				pulo_duplo = false
		else:
			pulo_duplo = true

		# Handle jump.
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			
			

		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
		#var direction := Input.get_axis("ui_left", "ui_right")
		#if direction:
		#	velocity.x = direction * SPEED
		#else:
		#	velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.x = Global.velocidade_global

		#Criar as condicionais de animação do jogador
		#Se a velocidade vertical(y) for negativa deve rodar a animação jump
		#Se a velocidade vertical(y) for positiva deve rodar a animação fall
		#Se a velocidade horizontal(x) for diferente de 0 deve rodar a animação run
		#$AnimatedSprite2D.play("")
		if velocity.y < 0:
			$AnimatedSprite2D.play("Jump")
		elif velocity.y > 0:
			$AnimatedSprite2D.play("Fall")
		elif velocity.x != 0:
			$AnimatedSprite2D.play("Run")
		
		#Ajustar limite inferior da câmera para 670
		#Ajustar posição horizontal (offset) para 400
		var cameraman = get_node("../Cameraman")
		if cameraman != null:
			var distancia = cameraman.position.x - position.x
			if distancia>= 560:
				morrendo = true
				
			
		if position.y >= 670:
			morrendo = true
			
	if morrendo == true:
		Global.velocidade_global = 0
		velocity.x = Global.velocidade_global
		
		if position.y >= 400:
			velocity.y = -300
		else:
			velocity.y = 0
			$AnimatedSprite2D.play("Death")
			await $AnimatedSprite2D.animation_finished
			Global.morreu = true
			queue_free()
			
		
	
	
	move_and_slide()
