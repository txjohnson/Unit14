extends KinematicBody2D

signal shoot

export var speed = 100
export var bullets_per_second = 10.0
export (PackedScene) var bullet


var can_shoot = true

func _ready():
	$Timer.wait_time = 1.0 / bullets_per_second
	pass # Replace with function body.

func _process (delta):
	var motion = speed * delta
	
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2 (-motion, 0))
	
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2 (motion, 0))

	$Turret.look_at (get_global_mouse_position())
	
	if Input.is_action_pressed('click'):
		shoot()
	
func shoot():
	var heading = Vector2(1,0).rotated ($Turret.global_rotation)
	var start   = $Turret/Position2D.global_position
	print (start)
	emit_signal ('shoot', bullet, start, heading)

