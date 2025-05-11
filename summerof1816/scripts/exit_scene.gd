extends CanvasLayer

@onready var restart_button: Button = $Restart_Button
#@onready var exit_button: Button = $Exit_Button

func _process(delta):
	pass
	
func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/open_scene.tscn")
	
func _on_quit_pressed():
	get_tree().quit()
