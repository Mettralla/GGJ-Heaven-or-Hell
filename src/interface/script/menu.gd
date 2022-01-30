extends Control


func _ready():
	pass # Replace with function body.



func _on_newgame_pressed():
	get_tree().change_scene("res://victory.tscn")
	#("res://pruebanewgame(eliminar despues).tscn")  #Agrgegarscene stage 1scene


func _on_option_pressed():
	get_tree().change_scene("res://options.tscn")


func _on_quit_pressed():
	get_tree().quit()
