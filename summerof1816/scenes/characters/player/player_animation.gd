extends CharacterBody2D

@onready var surveyor: AnimatedSprite2D = $AnimatedSprite2D
#@onready var _animation_player = $AnimationPlayer

#Original code from state machine, working but no movement
#func _process(_delta):
	#if Input.is_action_pressed("walk_up"):
		#_animation_player.play("walk")
	#else:
		#_animation_player.stop()

#copied from platform game
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	surveyor.play("idol")

#func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity.y += gravity * delta
		
func _process(_delta):
	if Input.is_action_pressed("walk_right"):
		surveyor.play("walk")
	elif Input.is_action_pressed("walk_left"):
		surveyor.play("walk")
	elif Input.is_action_pressed("walk_up"):
		surveyor.play("walk")
	elif Input.is_action_pressed("walk_down"):
		surveyor.play("walk")
	else:
		surveyor.play("idol")
		
	# Handle jump.
	#if Input.is_action_just_pressed("jumping") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("walk_left", "walk_right")
	#surveyor.play("walk")
	if direction:
		velocity.x = direction * SPEED
	else:
		#surveyor.play("idol")
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var direction2 := Input.get_axis("walk_up", "walk_down")
	#surveyor.play("walk")
	if direction2:
		velocity.y = direction2 * SPEED
	else:
		#surveyor.play("idol")
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()
