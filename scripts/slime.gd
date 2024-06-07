extends Node2D

const speed=60

var direction=1
@onready var ray_cast_right = $RayCast_right
@onready var ray_cast_left = $RayCast_left
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right.is_colliding():
		direction=-1
		animated_sprite_2d.flip_h
	if ray_cast_left.is_colliding():
		direction=1
	
	position.x += direction*speed*delta
