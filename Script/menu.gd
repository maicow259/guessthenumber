extends Control

signal start_game
signal go_to_options

func _on_play_pressed() -> void:
	emit_signal("start_game")


func _on_options_pressed() -> void:
	emit_signal("go_to_options")


func _on_quit_pressed() -> void:
	get_tree().quit()
