extends Area2D

@export var speed = 200

func _physics_process(delta):
	self.position.y += speed * delta
	
	if self.position.y >= 662:
		queue_free()


func _on_orange_area_entered(area: Area2D) -> void:
	if area.name == "player":
		get_parent().score +=1
		queue_free()
	pass # Replace with function body.
