extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var player = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_G):
		animated_sprite_2d.play("default")

	if player.position.x > position.x:
		animated_sprite_2d.flip_h = false
	else:
		animated_sprite_2d.flip_h = true
