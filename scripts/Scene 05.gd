extends Node2D

# GOAL: Make the game spawn an invader.
# 
# A Earth defense game needs an alien invader. Create a function that will
# add an alien invader on command. The alien invader must fly a path, so
# a simple path is available to preload.

# 1) Preload both the alien and the path.
# 2) Create a function that will create an alien and set it's path
# 3) Add that alien to the Invaders node
# 4) Call the spawn_alien function in your _ready() function

# 'basic_curve.tres' and an 'InvaderPrefab.tscn' are available to preload


func _ready():
	pass # Replace with function body.


func _on_Player_shoot(bullet, start, heading):
	var b = bullet.instance()
	b.initialize (start, heading)
	$Bullets.add_child(b)
