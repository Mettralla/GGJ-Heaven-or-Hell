extends Node2D

var dir= Vector2(1, 0)

var Sound = load("res://Sound1.mp3")
#var bullet_speed = 600

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	self.position += transform.x * 1000 * delta
#	self.position += dir.rotated(self.rotation)
#	var sound = AudioStreamPlayer.new()
#	sound.stream = Sound
	
#	if ($RayCast2D.is_colliding()):
#		print("hit!")
	

#		sound.play()
#		add_child(sound)

	#self.position.x += 1
	#La parte de arriba hace que rote mas y haga un buen efecto


func screen_exited():
	queue_free()



func _on_Area2D_area_entered(area):
	pass # Replace with function body.
