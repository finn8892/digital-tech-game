extends Node2D

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/cheese.tscn")

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/condiments.tscn")
