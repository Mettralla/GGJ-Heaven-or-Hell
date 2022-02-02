extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func PlayerFinished():
	get_tree().change_scene("res://Scenes/Stage_3/Stage_3.tscn")
	pass # Replace with function body.
