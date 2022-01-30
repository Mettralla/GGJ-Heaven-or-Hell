extends Node2D

var dir= Vector2(1, 0)

var Sound = load("res://Sound1.mp3")
var bullet_speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position += dir * delta * bullet_speed
#	var sound = AudioStreamPlayer.new()
#	sound.stream = Sound
	
#	if ($Area2D/CollisionShape2D.is_in_group(is_in_group("Player")):
#		print("hit!")



#		$Control/ProgressBar.value -= 1
	

#		sound.play()
 #get_parent().add_child()$Control/ProgressBar

	#self.position.x += 1
	#La parte de arriba hace que rote mas y haga un buen efecto


func screen_exited():
	queue_free()



func area_entered(area):
	pass # Replace with function body.
