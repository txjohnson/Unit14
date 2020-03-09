extends Node2D

# GOAL: Make the game spawn an invader.
# 
# A Earth defense game needs an alien invader. Create a function that will
# add an alien invader on command. The alien invader must fly a path, so
# a simple path is available to preload.

# 1) Preload both the alien and the path.
# 2) Create a function that will create an alien and set it's path
# 3) Add that alien to the Invaders node

# 'basic_curve.tres' and an 'InvaderPrefab.tscn' are available to preload


onready var basic_curve = preload("res://objects/basic_curve1.tres")
onready var invader1 = preload("res://objects/InvaderPrefab.tscn")

func _ready():
	spawn_invader()
	pass # Replace with function body.


func _on_Player_shoot(bullet, start, heading):
	var b = bullet.instance()
	b.initialize (start, heading)
	$Bullets.add_child(b)


func spawn_invader ():
	print (basic_curve.get_baked_length())
	
	var i = invader1.instance()
	i .motion_style = Tween.TRANS_LINEAR
	i .do_loop()
	i .set_path(basic_curve)
	$Invaders .add_child (i)
	i .start_moving()
	pass