extends Control

var temtativa
@onready var resposta: Label = $"Resposta margim/Resposta"
var ramdow_number = 0
@onready var imput_player: LineEdit = $"Imput Margim/Imput Player"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	temtativa = 3
	ramdow_number = randi() %10 + 1
	print(ramdow_number) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_imput_player_text_submitted(new_text: String) -> void:
	if temtativa > 0:
		temtativa -= 1
		
		if new_text == str(ramdow_number):
			resposta.text = "Você Acertou!"

func _on_guess_pressed() -> void:
	if temtativa > 0:
		temtativa -= 1
		
		if imput_player.text == str(ramdow_number):
			resposta.text = "Você Acertou!"
			
		elif imput_player.text < str(ramdow_number):
			resposta.text = "O numero é maior!"
			
		elif imput_player.text > str(ramdow_number):
			resposta.text = "O numero é menor!"
			
		if temtativa <= 0:
			print("Game Over!")
