extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/ProgressBar/Sprite/AnimationPlayer.play("Heart")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position = get_global_mouse_position()


func _on_Area2D_area_entered(area):
	if area.is_in_group("Bullet"):
		$CanvasLayer/ProgressBar.value -= 10
	if $CanvasLayer/ProgressBar.value == 0:
		get_tree().reload_current_scene()
