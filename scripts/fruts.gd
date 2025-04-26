extends Area2D

@export var speed = 140
@export var rotation_speed = 1.3
@onready var timer_delete = $TimerDelete

func _process(delta):
	global_position.y += speed * delta
	rotation += rotation_speed * delta


func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	print("saiu mano")
	timer_delete.start()

func _on_timer_delete_timeout() -> void:
	queue_free()
