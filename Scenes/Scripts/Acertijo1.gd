extends Control

var player : KinematicBody2D
var checkpoint_position : Vector2  # Asegúrate de asignar el nodo del jugador en el editor

func _ready():
	$Panel/BotonB/BotonA.grab_focus()
	$Panel/BotonB
	$Panel/BotonB/BotonD
	$Panel/BotonB/BotonE
	$Panel/BotonB/BotonC
	
	# Conectar la señal checkpointActivated al método handle_checkpoint_activated
	get_tree().get_root().connect("checkpointActivated", self, "return_to_checkpoint")

func return_to_checkpoint():
	# Restaurar la posición del jugador al punto de control
	player.global_position = checkpoint_position

func _on_BotonA_pressed():
	get_tree().change_scene("res://Scenes/MundoA.tscn")

func _on_BotonB_pressed():
	get_tree().change_scene("res://Scenes/Equivocacion.tscn")

func _on_BotonC_pressed():
	get_tree().change_scene("res://Scenes/Equivocacion.tscn")
