extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fácil_pressed() -> void:
	Global.velocidade_global = 200
	get_tree().change_scene_to_file("res://Menus/troca_personagem.tscn")


func _on_médio_pressed() -> void:
	Global.velocidade_global = 300
	get_tree().change_scene_to_file("res://Menus/troca_personagem.tscn")


func _on_difícil_pressed() -> void:
	Global.velocidade_global = 600
	get_tree().change_scene_to_file("res://Menus/troca_personagem.tscn")


func _on_sair_pressed() -> void:
	get_tree().quit()
