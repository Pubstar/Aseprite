extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D

const speed = 10

func _ready():
	animated_sprite_2d.play("walk")

func _physics_process(delta):
	position.x += 1 * delta * speed
	
	
