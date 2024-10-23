extends Node

const MENU = preload("res://Scene/menu.tscn")
const GAME_SCENE = preload("res://Scene/game_scene.tscn")
const OPTIONS_SCENE = preload("res://Scene/options.tscn")



func _ready() -> void:
	_change_to_menu()


# Função para trocar para a cena de Menu
func _change_to_menu():
	if get_child_count() > 0:
		var current_scene = get_child(0) 
		current_scene.queue_free()
		
	var menu_instance = MENU.instantiate()
	
	add_child(menu_instance)
	
	menu_instance.connect("start_game", Callable(self, "_change_to_game"))
	menu_instance.connect("go_to_options", Callable(self, "_change_to_options"))

# Função para trocar para a cena de Game
func _change_to_game():
	if get_child_count() > 0:
		var current_scene = get_child(0) 
		current_scene.queue_free()
		
	var game_instance = GAME_SCENE.instantiate()
	
	add_child(game_instance)

# Função para trocar para a cena de Options
func _change_to_options():
	if get_child_count() > 0:
		var current_scene = get_child(0)
		current_scene.queue_free()
		
	var options_instance = OPTIONS_SCENE.instantiate()
	
	add_child(options_instance)
	
	# Conectar o sinal 'back_to_menu' da Options Scene sempre que ela for carregada
	options_instance.connect("back_to_menu", Callable(self, "_change_to_menu"))
