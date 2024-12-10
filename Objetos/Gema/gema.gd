extends CharacterBody2D



func _on_coletar_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Global.gemas += 1
		self.queue_free()
	
