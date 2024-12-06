extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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
