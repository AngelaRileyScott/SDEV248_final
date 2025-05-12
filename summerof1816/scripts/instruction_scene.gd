extends CanvasLayer

@onready var open_scene: CanvasLayer = $"."
@onready var button: Button = $Button

#func _process(delta):
	#pass
	
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
