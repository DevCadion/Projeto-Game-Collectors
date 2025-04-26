extends Node2D

var fruit_scene = preload("res://scens/fruts.tscn")
@onready var positions = $Positions
var last_position

var game_started = false # Nova variável para saber se o jogo começou

func _ready() -> void:
	game_started = true # Marca que o jogo já começou (você pode controlar isso melhor depois se quiser)
	spawn_fruit() # Spawn inicial

func _on_timer_spaw_timeout() -> void:
	spawn_fruit()

func spawn_fruit():
	if not game_started:
		return # Se o jogo não começou, não faz nada

	var positions_list = positions.get_children()
	if positions_list.is_empty():
		print("Nenhuma posição disponível para spawnar frutas.")
		return

	var spawn_position = positions_list.pick_random()

	if spawn_position != last_position:
		var fruit_instance = fruit_scene.instantiate()
		fruit_instance.global_position = spawn_position.global_position
		add_child(fruit_instance)
		last_position = spawn_position
	else:
		spawn_fruit() # Só tenta spawnar de novo se caiu na mesma posição
