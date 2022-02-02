extends Node2D



var Sound = load ("res://Sonidos/Character Sounds/Abaddon Sounds/Abaddon Sound.wav")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var cont = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
#	for i in 30:
#		cont = cont - 1
#		if cont == 0:
#			print("HEEEEEEEEEEEEYYYYYYYYYYYY")
#			get_tree().change_scene("res://Scenes/Stage_2.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#	$Timer.set_wait_time(.6)
#	var sound = AudioStreamPlayer.new()
#	sound.stream = Sound
#	sound.play(0.006*delta)
#	add_child(sound)
#	$Timer.start()

#func playing():



func PlayerFinished():
	get_tree().change_scene("res://Scenes/Stage_2/Stage_2.tscn")
	pass # Replace with function body.
	





