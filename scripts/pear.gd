extends Area2D

@export var speed = 200
@onready var efeito = $efeitosonoro as AudioStreamPlayer


func _physics_process(delta):
	self.position.y += speed * delta
	
	if self.position.y >= 662:
		queue_free()


func _on_pear_area_entered(area: Area2D) -> void:
	if area.name == "player":
		efeito.play()
		await efeito.finished
		get_parent().score +=1
		queue_free()
	pass # Replace with function body.
