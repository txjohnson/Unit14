extends Node2D

# GOAL: Have the player fire a bullet.
# 
# This scene will respond to a signal called shoot from the player.
# Create a function in your player that emits this signal whenever the mouse button
# is pressed.
#
# Don't forget to attach the _on_player_shoot() function below to your shoot signal

func _ready():
	pass # Replace with function body.


func _on_Player_shoot(bullet, start, heading):
	var b = bullet.instance()
	b.initialize (start, heading)
	$Bullets.add_child(b)
