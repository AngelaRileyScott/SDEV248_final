extends Area2D

@export var value: int = 1

func _on_body_entered(body: Node2D) -> void:
	if body.name == "TestDefaultPlayer":
		GameController.chain_collected(value)
		self.queue_free()
	#pass # Replace with function body.
