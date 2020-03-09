extends KinematicBody2D

export var speed = 200

func _ready():
	pass # Replace with function body.

func set_shape(atexture):
	$Sprite.texture = atexture

func follow_path (apath):
	pass