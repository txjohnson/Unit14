extends Path2D

export var speed = 200
export var hitpoints = 250

export var motion_style = Tween.TRANS_LINEAR

var time = 0.0

func _ready():
	pass # Replace with function body.

func set_shape (atexture):
	$PathFollow2D/Invader/Sprite.texture = atexture
	
func do_loop ():
	$PathFollow2D.loop = true
	$Tween .repeat = true
	
func dont_loop ():
	$PathFollow2D.loop = false
	$Tween .repeat = false
	
func start_moving ():
	$Tween .start()
	
func stop_moving ():
	$Tween .stop()
	
func set_path (acurve):
	curve = acurve
	time = curve .get_baked_length() / speed
	$Tween.interpolate_property($PathFollow2D, "unit_offset", 0, 1, 
								time, motion_style, Tween.EASE_IN_OUT)

func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()
	
func take_damage (amount):
	hitpoints -= amount
	if hitpoints <= 0:
		pass