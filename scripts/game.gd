extends Node2D

var pl_speed = 400
var score = 0

@onready var morango = preload("res://scens/morango.tscn")
@onready var grape = preload("res://scens/grape.tscn")
@onready var orange = preload("res://scens/orange.tscn")
@onready var pear = preload("res://scens/pear.tscn")
@onready var pineapple = preload("res://scens/pineapple.tscn")
@onready var fruits = [morango, grape, orange, pear, pineapple]

var min_speed = 100
var max_speed = 250

var fruits_inst
var timer = 0
var more_fruits = 50
var timer_vel = 0

# Vida
var vida_max = 100
var vida_atual = 100
@onready var vida_bar = $VidaBar

func _ready():
	randomize()
	atualizar_barra_vida()

func _physics_process(delta):
	move_player(delta) 
	
	timer += delta
	if timer >= randi() % more_fruits:
		fruits_spawn()
		timer = 0
		
	level_inc(delta)
	$score.text = str(score)

func move_player(delta):
	var direction = Input.get_action_strength("right") - Input.get_action_strength("left")
	if direction != 0:
		$player.position.x += direction * pl_speed * delta
	$player.position.x = clamp($player.position.x, 55, 1180)

func fruits_spawn():
	var fruits_rnd = fruits[randi() % fruits.size()]
	fruits_inst = fruits_rnd.instantiate()
	fruits_inst.position = Vector2(randf_range(40, 1100), -10)
	fruits_inst.speed = randi_range(min_speed, max_speed)
	add_child(fruits_inst, true)

func level_inc(delta):
	timer_vel += delta
	if timer_vel >= 10:
		min_speed += 30
		max_speed += 10
		more_fruits = max(more_fruits - 5, 2)
		timer_vel = 0

# ----------------------------
# CONTROLE DE VIDA
# ----------------------------

func set_vida(nova_vida: int):
	vida_atual = clamp(nova_vida, 0, vida_max)
	atualizar_barra_vida()
	if vida_atual <= 0:
		game_over()


func atualizar_barra_vida():
	var porcentagem = float(vida_atual) / vida_max
	var frame = int((1.0 - porcentagem) * 5.0) # Inverte: mais vida = frame menor
	vida_bar.animation = "vida"
	vida_bar.frame = frame


func game_over():
	call_deferred("_voltar_para_menu")

func _voltar_para_menu():
	get_tree().change_scene_to_file("res://scens/title_screen.tscn")
