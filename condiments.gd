extends Node2D


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://protein.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://bread.tscn")
	
