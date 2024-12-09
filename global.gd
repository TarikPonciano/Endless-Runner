extends Node

var pontuacao = 0
var maior_pontuacao = 0
var velocidade_global = 300
var personagem_escolhido = 1;
var morreu = false
var moedas = 0


func _ready() -> void:
	Utils.carregar_dados()
	if Utils.dados:
		maior_pontuacao = Utils.dados["maior_pontuacao"]
