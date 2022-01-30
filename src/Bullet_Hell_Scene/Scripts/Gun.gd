extends Node2D

var bullet_scene = load ("res://Scenes/Bullet2.tscn")

#func spawn_bullets():
#	var b1 = bullet_scene.instance()
#	b1.position = self.position
#	b1.rotation = self.rotation
#	b1.dir = transform.x

func _ready():
	get_parent().connect("shoot", self, "shoot")

func shoot():
	var b1 = bullet_scene.instance()
	b1.global_position = self.global_position
	b1.global_rotation = self.global_rotation
#	b1.dir = transform.x
#	add_child(b1)
	get_node("../DesanclarDePadre").add_child(b1)
	pass # Replace with function body.
	
#func _physics_process(delta):
#	look_at(get_global_mouse_position())
	
#	look_at(get_global_mouse_position()) #poner en _physycs_process
