extends Node

const MENU = preload("res://Scene/menu.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_change_to_menu()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _change_to_menu():
	if $scene != null:
		$scene.queue_free()
		
	var menu_instance = MENU.instantiate()
	
	add_child(menu_instance)
	
	
