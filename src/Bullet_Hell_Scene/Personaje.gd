extends KinematicBody2D

var velocidad = Vector2(0,0)
var gravedad = 9.81
var masa = 4
var velocidadNormal = 600

func _physics_process(delta):
	velocidad.x = velocidadNormal
	
#	if Input.is_action_pressed("Salto1") and is_on_floor():
#		velocidad.y = -1100
	
	if Input.is_action_pressed("Saltar") and is_on_floor():
		velocidad.y = -1000
	
	velocidad.y = velocidad.y + gravedad * masa
	velocidad = move_and_slide(velocidad, Vector2.UP)
	
	velocidad.x = lerp(velocidad.x,0,0.25)


func _on_Area2D_area_entered(area):
	if area.is_in_group("Pluma"):
		$ProgressBar.value += 20
		velocidadNormal = velocidadNormal + 5
		
	if area.is_in_group("Pajaro"):
		$ProgressBar.value -= 35
		velocidadNormal = velocidadNormal - 35
		
