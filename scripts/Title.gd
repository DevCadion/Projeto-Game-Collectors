extends Control



func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scens/game.tscn")
	
	
func _on_quit_bnt_pressed() -> void:
	get_tree().quit()
