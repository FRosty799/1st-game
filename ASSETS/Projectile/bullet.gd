extends Area2D
var speed = 750

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * speed * delta
	pass



func _on_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free
	
	


#func shoot():
#	var b = Bullet.instantiate()
#	add_child(b)
#	b.transform = $Muzzle.transform
#	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.
