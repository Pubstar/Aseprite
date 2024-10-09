extends CharacterBody2D

@onready var player = $"../Player"
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if player.position.x > position.x:
		animated_sprite_2d.flip_h = false
	else:
		animated_sprite_2d.flip_h = true

func _physics_process(delta):
	pass
