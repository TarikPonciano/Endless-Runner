extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Pontuação: " + str(Global.pontuacao)
	if (Global.pontuacao > Global.maior_pontuacao):
		Global.maior_pontuacao = Global.pontuacao
		text += "\n* NOVO HIGH-SCORE *"
