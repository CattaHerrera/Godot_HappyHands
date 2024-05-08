extends Control

func _ready():
	$Panel/BotonB/BotonA.grab_focus()
	$Panel/BotonB.grab_focus()
	$Panel/BotonB/BotonC.grab_focus()

func _on_BotonB_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")

func _on_BotonC_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")

func _on_BotonA_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn")
