extends Control

func _ready():
	$VBoxContainer/startGameButton.grab_focus()


func _on_startGameButton_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")


func _on_quitButton_pressed():
	get_tree().quit()
