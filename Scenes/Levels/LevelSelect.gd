extends Control



func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/StartMenu.tscn")


func _on_lvl_0_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Tutorial.tscn")


func _on_lvl_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/BatteryLevel.tscn")


func _on_lvl_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/LampLevel.tscn")


func _on_lvl_3_pressed():
	pass # Replace with function body.


func _on_lvl_4_pressed():
	pass # Replace with function body.