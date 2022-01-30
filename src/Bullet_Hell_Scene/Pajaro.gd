extends Node2D



func _on_Area2D_area_entered(area):
	$AnimatedSprite.animation = "Tocado"


func _on_Area2D_area_exited(area):
	$AnimatedSprite.animation = "Normal"
