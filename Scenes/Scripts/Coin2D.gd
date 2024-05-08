extends Area2D

var checkpoint_position : Vector2
signal checkpointActivated

func _on_Coin2D_body_entered(body):
	if body.get_name() == 'PJ':
		$AudioStreamPlayer.playing = true 
		body.add_Coin()
		yield(get_tree().create_timer(0.1), "timeout") 

		# Guardar la posición del jugador como punto de control
		checkpoint_position = body.global_position
		
		# Emitir la señal indicando que se ha activado el punto de control
		emit_signal("checkpointActivated")
		
		queue_free()
