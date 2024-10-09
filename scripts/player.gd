extends CharacterBody2D

const speed: float = 5000
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
const jump_height = -200
var direction

@onready var animated_sprite_2d = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
		
	# Move sprite
	if !is_on_floor():
		velocity.y += delta * gravity
		
	if Input.is_action_just_pressed("jump") && is_on_floor():
		velocity.y += jump_height
		
	direction = Input.get_axis('move_left', 'move_right')
	velocity.x = direction * speed * delta
	if direction != 0:
		animated_sprite_2d.play("walk")
	else:
		velocity = Vector2(0,velocity.y)
		animated_sprite_2d.play("idle")
	
	move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Flip sprite
	if direction < 0:
		animated_sprite_2d.flip_h = true
	elif direction > 0:
		animated_sprite_2d.flip_h = false
