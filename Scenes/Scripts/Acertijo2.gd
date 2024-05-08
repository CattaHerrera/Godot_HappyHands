extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/BotonB/BotonA.grab_focus()
	$Panel/BotonB.grab_focus()
	$Panel/BotonB/BotonD.grab_focus()
	$Panel/BotonB/BotonE.grab_focus()
	$Panel/BotonB/BotonC.grab_focus()




func _on_BotonB_pressed():
	get_tree().change_scene("res://Scenes/MundoB.tscn")


func _on_BotonD_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn")


func _on_BotonE_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn")


func _on_BotonC_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn")


func _on_BotonA_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn") 
