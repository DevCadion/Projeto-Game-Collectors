extends Control



func _on_start_btn_pressed() -> void:
	Transision.fade_to_scene("res://scens/game.tscn")
	#get_tree().change_scene_to_file("res://scens/game.tscn")
	
	
func _on_quit_bnt_pressed() -> void:
	get_tree().quit()
