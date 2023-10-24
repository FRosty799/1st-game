extends CharacterBody2D

const SPEED = 300.0
@export var bullet: PackedScene

func _process(delta):	
	pass

func _physics_process(delta):
	look_at(get_global_mouse_position())
	# Get the input direction and handle the movement/deceleration.
	var xdirection = Input.get_axis("left", "right")
	var ydirection = Input.get_axis("up", "down")
	if xdirection:
		velocity.x = xdirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if ydirection:
		velocity.y = ydirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	if Input.is_action_just_pressed("shoot"):
		var inst = bullet.instantiate()
		owner.add_child(inst)
		inst.transform = $Muzzle.global_transform
