extends Node2D

var foxy = preload("res://Objetos/Foxy/player.tscn")
var bunny = preload("res://Objetos/Bunny/player.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var jogador
	if Global.personagem_escolhido == 1:
		jogador = foxy.instantiate()
	elif Global.personagem_escolhido == 2:
		jogador = bunny.instantiate()
	else:
		print("Personagem não existente.")
		
	jogador.position = Vector2(128,480)
	add_child(jogador)


func _on_timer_timeout() -> void:
	var jogador = get_node("Player")
	if jogador != null:
		Global.pontuacao = round(jogador.position.x/5)
