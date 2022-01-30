extends Node2D

#var dir= Vector2(1, 0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x += 1 #dir.rotated(self.rotation)
	self.position.y += 10
#	var sound = AudioStreamPlayer.new()
#	sound.stream = Sound
	
	if ($RayCast2D.is_colliding()):
		print("hit!")


func screen_exited():
	queue_free()
