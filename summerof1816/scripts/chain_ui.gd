extends Control

@onready var label: = $Label

func _ready():
	EventController.connect("chain_collected", on_event_chain_collected)
	
func on_event_chain_collected(value: int) -> void:
	label.text = str(value)
