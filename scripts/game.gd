extends Node2D

var pl_speed = 400

var score = 0


@onready var morango = preload("res://scens/morango.tscn")
@onready var grape = preload("res://scens/grape.tscn")
@onready var orange = preload("res://scens/orange.tscn")
@onready var pear = preload("res://scens/pear.tscn")
@onready var pineapple = preload("res://scens/pineapple.tscn")

@onready var fruits = [morango, grape, orange, pear, pineapple];

var min_speed = 100
var max_speed = 250

var fruits_inst 

var timer = 0
var more_fruits = 50
var timer_vel = 0


func _ready():
	randomize()
	pass
	
func _physics_process(delta):
	move_player(delta) 
	
	timer += delta
	if timer >= randi() %more_fruits:
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
	var fruits_rnd = fruits[randi() %5]
	fruits_inst = fruits_rnd.instantiate()
	fruits_inst.position = Vector2(randf_range(40, 1100), -10)
	fruits_inst.speed = randi_range(min_speed, max_speed)
	add_child(fruits_inst, true)
	pass
	
func level_inc(delta):
	timer_vel += delta
	if timer_vel >= 10:
		min_speed += 30
		max_speed += 10
		more_fruits -= 5
		if more_fruits <= 2:
			more_fruits = 2
		timer_vel = 0
