extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.bunny_habilitada == true:
		$"Panel/Bunny-Desabilitado".visible = false
		$"Panel/Bunny-Desabilitado".disabled = true
		
		$"Panel/Bunny-Habilitado".visible = true
		$"Panel/Bunny-Habilitado".disabled = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_foxy_pressed() -> void:
	Global.personagem_escolhido = 1
	get_tree().change_scene_to_file("res://main.tscn")


func _on_bunny_pressed() -> void:
	Global.personagem_escolhido = 2
	get_tree().change_scene_to_file("res://main.tscn")


func _on_voltar_pressed() -> void:
	get_tree().change_scene_to_file("res://menu_inicial.tscn")


func _on_bunny_desabilitado_pressed() -> void:
	if (Global.gemas >= 5):
		Global.gemas -= 5
		$"Panel/Bunny-Desabilitado".visible = false
		$"Panel/Bunny-Desabilitado".disabled = true
		
		$"Panel/Bunny-Habilitado".visible = true
		$"Panel/Bunny-Habilitado".disabled = false
		
		Global.bunny_habilitada = true
		Utils.salvar_dados()
		
		
