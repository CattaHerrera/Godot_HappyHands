extends CanvasLayer

var coins = 0

func _ready():
	var coinNode = get_tree().get_root().find_node("Coin2D",true,false)
	coinNode.connect("coinCollected",self,"handleCoinCollected")
	$CollectText.text = String(coins)
	
func handleCoinCollected():
	print("Coin Collected")
	coins += 1
	$CollectText.text = String(coins)
