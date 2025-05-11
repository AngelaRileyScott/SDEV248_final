extends Node

var total_chain: int = 0

func chain_collected(value: int):
	total_chain += value
	EventController.emit_signal("chain_collected", total_chain)
	
	
