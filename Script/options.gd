extends Control

signal back_to_menu

func _on_back_pressed() -> void:
	emit_signal("back_to_menu")
