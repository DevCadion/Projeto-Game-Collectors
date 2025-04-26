extends CharacterBody2D  

var speed = 300  

func _physics_process(delta):
	var direction = 0  

	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("esquerda"):
		direction -= 1
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("direita"):
		direction += 1

	velocity.x = direction * speed  

	move_and_collide(velocity * delta);
