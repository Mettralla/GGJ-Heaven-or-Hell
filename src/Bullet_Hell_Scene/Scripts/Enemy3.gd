extends Node2D
signal shoot


var bullet_scene = load ("res://Scenes/Bullet3.tscn")
#borrar uno instanciar el otro con cada scena fade es un fondo negro para las transiciones
#cargar todos los trapos sucios en una pantalla negra

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(.6)
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(false)

func spawn_bullets():
	emit_signal("shoot")
#	rotate(5)
#	position.x += .3
#	var b1 = bullet_scene.instance()
#	b1.position.x += 700
#	b1.position.y += 300
#	b1.dir = Vector2(1, 0) 
#	var b2 = bullet_scene.instance()
#	b2.position.x += 700
#	b2.position.y += -300
#	b2.dir = Vector2(-1, 0)
#	get_parent().add_child(b1)
#	get_parent().add_child(b2)

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
#	var b3 = bullet_scene.instance()
#	b3.position = self.position
#	b3.rotation = self.rotation
#	b3.dir = Vector2(0, -1)
	
#	var b4 = bullet_scene.instance()
#	b4.position = self.position
#	b4.rotation = self.rotation
#	b4.dir = Vector2(0, 1)
#	get_parent().add_child(b3)
#	get_parent().add_child(b4)
#a	
#	var b5 = bullet_scene.instance()
#	b5.position = self.position
#	b5.rotation = self.rotation
#	b5.dir = Vector2(1, 0)
	
#	var b6 = bullet_scene.instance()
#	b6.position = self.position
#	b6.rotation = self.rotation
#	b6.dir = Vector2(-1, 0)
#	get_parent().add_child(b5)
#	get_parent().add_child(b6)

func timeout():
	spawn_bullets()
