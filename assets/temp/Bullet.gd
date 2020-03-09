extends Area2D

export (int) var speed = 200
export (int) var damage = 10

var velocity = Vector2()

func _ready():
	pass # Replace with function body.

func initialize (aposition, adirection):
	position = aposition
	rotation = adirection.angle()
	velocity = adirection * speed
	
func _process(delta):
	position += velocity * delta
	
func _on_Bullet_body_entered(body):
	if body.has_method ('take_damage'):
		body .take_damage (damage)
	explode ()

func explode ():
	queue_free()

func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()
