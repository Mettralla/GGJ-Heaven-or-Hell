extends KinematicBody2D
var velocidad = Vector2(0,0)

func _physics_process(delta):
	velocidad.x = +600
	velocidad = move_and_slide(velocidad)
	



func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		get_tree().reload_current_scene()
