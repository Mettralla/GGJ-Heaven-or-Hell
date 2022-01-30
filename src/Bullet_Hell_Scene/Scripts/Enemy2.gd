extends Node2D

signal shoot

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#deg2rad como degri

var bullet_scene = load ("res://Scenes/Bullet2.tscn")

#onready var player = get_parent().get_node("Player")

#func _ready():
#	$Timer.set_wait_time(.6)
#	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate((PI*delta)/4)
#	position.x += .3
func spawn_bullets():
	emit_signal("shoot")
#	var b1 = bullet_scene.instance()
#	b1.position = self.position
#	b1.rotation = self.rotation
#	b1.dir = Vector2(1, 0)
	
#	var b2 = bullet_scene.instance()
#	b2.position = self.position
#	b2.rotation = self.rotation
#	b2.dir = Vector2(-1, 0)
#	get_parent().add_child(b1)
#	get_parent().add_child(b2)

#	var b3 = bullet_scene.instance()
#	b3.position = self.position
#	b3.rotation = self.rotation
#	b3.dir = Vector2(-1, 0)
	
#	var b4 = bullet_scene.instance()
#	b4.position = self.position
#	b4.rotation = self.rotation
#	b4.dir = Vector2(0, -1)
#	get_parent().add_child(b3)
#	get_parent().add_child(b4)


func timeout():
	spawn_bullets()
