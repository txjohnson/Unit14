extends KinematicBody2D


export var speed = 100

func _ready():
	pass # Replace with function body.

func _process (delta):
	var motion = speed * delta
	
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2 (-motion, 0))
	
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2 (motion, 0))
