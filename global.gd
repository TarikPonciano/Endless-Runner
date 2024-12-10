extends Node

var pontuacao = 0
var maior_pontuacao = 0
var velocidade_global = 300
var personagem_escolhido = 1;
var morreu = false
var gemas = 0
var bunny_habilitada = false


func _ready() -> void:
	Utils.carregar_dados()
	if Utils.dados:
		maior_pontuacao = Utils.dados.get("maior_pontuacao", 0)
		gemas = Utils.dados.get("gemas", 0)
		bunny_habilitada = Utils.dados.get("bunny_habilitada", false)
	
