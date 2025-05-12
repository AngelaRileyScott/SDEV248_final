extends CharacterBody2D

#var is_chatting = false

#var player
#var player_in_chat_zome = false

func _ready():
	pass
	
func _process(delta):
	#if current_state == 0:
	$AnimatedSprite2D.play("farmer_move")
	#elif 
	#if Input.is_action_just_pressed("chat"):
		#print("chatting with npc")
		#is_chatting = true

#func _on_farmer_chat_body_entered(body: Node2D) -> void:
	#if body.has_method("player"):
		#player = body
		#player_in_chat_zome = true

#func _on_farmer_chat_body_exited(body: Node2D) -> void:
	#if body.has_method("player"):
		#player_in_chat_zome = false
		


#func _on_timer_timeout() -> void:
	
