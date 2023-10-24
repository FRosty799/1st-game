extends Node2D


@onready var bullet_cont = $BulletCont

var player = null
# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	#player.laser_shot.connect(_on_player_bullet_shot)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	
	
func _on_player_bullet_shot(bullet_scene, location):
	var bullet = bullet_scene.instantiate()
	bullet.global_position = location
	bullet_cont.add_child(bullet)
