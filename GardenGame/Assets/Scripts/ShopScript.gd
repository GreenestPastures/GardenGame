extends CanvasLayer

var shopWindowOpen = false
var curSeed = "tomato"
var buyButtHovering = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_hud_shop_button_press():
	if shopWindowOpen:
		shopWindowOpen = !shopWindowOpen
		offset.y = 1200
	else:
		shopWindowOpen = !shopWindowOpen
		offset.y = 0



func BuyButtEnter():
	buyButtHovering = true



func BuyButtExit():
	buyButtHovering = false

