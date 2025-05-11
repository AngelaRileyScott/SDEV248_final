extends CanvasLayer

@onready var open_scene: CanvasLayer = $"."
@onready var button: Button = $Button

#func _process(delta):
	#pass
	
func _on_welcome_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/open_scene.tscn")
