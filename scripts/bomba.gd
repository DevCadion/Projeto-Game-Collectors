extends Area2D

@export var speed = 200
@export var dano = 20  # dano causado ao tocar no player
@onready var efeitosonoro = $efeitosonoro as AudioStreamPlayer

func _physics_process(delta):
	position.y += speed * delta

	if position.y >= 662:
		queue_free()


func _on_grape_area_entered(area: Area2D) -> void:
	if area.name == "player":
		# Reduz score
		
		get_parent().score -= 3
		
		# Acessa o nó raiz e reduz a vida
		var root = get_tree().current_scene
		if root.has_method("set_vida"):
			root.set_vida(root.vida_atual - dano)
			
		efeitosonoro.play()
		await efeitosonoro.finished
		queue_free()
