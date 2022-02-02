extends Control


func _ready():
	pass # Replace with function body.



func _on_newgame_pressed():
	get_tree().change_scene("res://scene/Sky/mundo2.tscn")
	#("res://pruebanewgame(eliminar despues).tscn")  #Agrgegarscene stage 1scene


func _on_option_pressed():
	get_tree().change_scene("res://scene/options.tscn")


func _on_quit_pressed():
	get_tree().quit()
