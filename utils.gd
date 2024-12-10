extends Node

var dados = {
	"maior_pontuacao": Global.maior_pontuacao,
	"gemas": Global.gemas,
	"bunny_habilitada": Global.bunny_habilitada,
}

# Called when the node enters the scene tree for the first time.
func carregar_dados():
	var file = FileAccess.open("user://dados.json", FileAccess.READ)  # Abre o arquivo para leitura
	if file:
		
		var json_string = file.get_as_text()  # Lê o conteúdo do arquivo como uma string
		var json_result = JSON.parse_string(json_string)  # Converte a string JSON para um dicionário
		if json_result:
			dados = json_result
			print("Deu certo")
		else:
			print("Erro ao carregar o arquivo")
		
		file.close()  # Fecha o arquivo
	else:
		print("Erro ao abrir o arquivo para carregar.")
	
func salvar_dados():
	dados["maior_pontuacao"] = Global.maior_pontuacao
	dados["gemas"] = Global.gemas
	dados["bunny_habilitada"] = Global.bunny_habilitada
	
	
	var file = FileAccess.open("user://dados.json", FileAccess.WRITE)  # Caminho para o arquivo JSON
	if file:
		var json_data = JSON.stringify(dados)  # Converte o dicionário para uma string JSON
		file.store_string(json_data)  # Salva a string JSON no arquivo
		file.close()  # Fecha o arquivo
		print("Dados salvos com sucesso.")
	else:
		print("Erro ao abrir o arquivo para salvar.")
