extends CanvasLayer

signal purchase(seed, price)

var shopWindowOpen = false
var curSeed = "tomato"
var buyButtHovering = false
@export var thePrice = 10
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
		offset.y = -20

func _input(event):
	if event.is_action_pressed("click") && buyButtHovering:
		purchase.emit(curSeed, thePrice)

func BuyButtEnter():
	buyButtHovering = true


func BuyButtExit():
	buyButtHovering = false



func the_choice(seedType):
	curSeed = seedType
	pass # Replace with function body.
