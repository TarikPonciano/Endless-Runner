extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Pegar a posição do jogador, a posição do terreno e 
	# se a distância entre os dois for maior do que X, remover o terreno
	var jogador = get_node("../../Player")
	if (jogador != null):
		var distancia = jogador.position.x - self.position.x
		
		if distancia >4000:
			self.queue_free()
	
