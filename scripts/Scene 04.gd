extends Node2D

# GOAL: Have the player fire a bullet as long as a button is pressed.
# 
# A timer node has been added to player. Attach the script you've created previously
# (or attach a copy) and adjust the script so that bullets fire under the control
# of the timer.

# Create a function in your player that emits this signal whenever the mouse button
# is pressed.

# Don't forget to attach the _on_player_shoot() function below to your shoot signal

func _ready():
	pass # Replace with function body.


func _on_Player_shoot(bullet, start, heading):
	var b = bullet.instance()
	b.initialize (start, heading)
	$Bullets.add_child(b)
