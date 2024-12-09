extends Panel


# Called when the node enters the scene tree for the first time
func _ready() -> void:
	Utils.salvar_dados()

func _on_button_pressed() -> void:
	Global.morreu = false
	get_tree().change_scene_to_file("res://menu_inicial.tscn")
