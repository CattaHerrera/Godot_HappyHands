extends CanvasLayer

# Variable global para almacenar el contador de monedas
var global_coins_count = 0
var panel2_visible = true
var time_to_hide = 10
var current_time = 0.0
var coins = 0  # Definir coins como variable de instancia

func _ready():
	# Configura el contador de monedas con el valor global
	coins = global_coins_count  # Asignar el valor de global_coins_count a coins
	$CollectText.text = String(coins)
	$Panel2.show()
	$Panel2/MensajeInicio.show()  # Asegúrate de que el Label esté inicialmente visible

func _process(delta):
	if panel2_visible:
		current_time += delta
		if current_time >= time_to_hide:
			hide_panel2()
			current_time = 0.0
			time_to_hide -= 2.0  # Reducir el tiempo para la próxima vez
			if time_to_hide <= 0.0:
				panel2_visible = false

func handleCoinCollected():
	print("Coin Collected")
	coins += 1
	global_coins_count += 1  # Incrementa la variable global de contador de monedas
	$CollectText.text = String(coins)
	
	if coins == 5:    
		# Aquí vamos a mostrar la escena de pregunta en lugar de cambiar de escena
		get_tree().change_scene("res://Scenes/Acertijo1.tscn")  # Asegúrate de que la ruta sea correcta
	
	if  global_coins_count == 10:
		get_tree().change_scene("res://Scenes/Acertijo2.tscn")  # Asegúrate de que la ruta sea correcta

func hide_panel2():
	$Panel2.hide()
	hide_images()
	$Panel2/MensajeInicio.hide()  # Ocultar el Label

func hide_images():
	for child in $Panel2.get_children():
		if child is TextureRect:
			child.hide()
