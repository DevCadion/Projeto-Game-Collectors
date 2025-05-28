extends CanvasLayer


var new_scene :=  ""

func fade_to_scene(_new_scene: String) -> void:
	new_scene = _new_scene
	$AnimationPlayer.play("fade")
	
	
func change_scene() -> void:
	get_tree().change_scene(new_scene)
