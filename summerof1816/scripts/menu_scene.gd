extends CanvasLayer

@onready var open_scene: CanvasLayer = $"."
@onready var menu_button: Button = $Welcome2

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/exit_scene.tscn")
