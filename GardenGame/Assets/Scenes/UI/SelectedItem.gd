extends CanvasLayer

signal changeSeed(seedType)
signal hovering(state)
var curSeed = ""
var hover = false
var hoverChange = false

func _input(event):
	if event.is_action_pressed("click") && hover:
		changeSeed.emit(curSeed)


func _on_beetroot_mouse_entered():
	curSeed = "beetroot"
	hover = true


func _on_beetroot_mouse_exited():
	hover = false


func _on_cauliflower_mouse_entered():
	curSeed = "cauliflower"
	hover = true
	



func _on_cauliflower_mouse_exited():
	hover = false



func _on_garlic_mouse_entered():
	curSeed = "garlic"
	hover = true



func _on_garlic_mouse_exited():
	hover = false



func _on_lettuce_mouse_entered():
	curSeed = "lettuce"
	hover = true



func _on_lettuce_mouse_exited():
	hover = false



func _on_mangocarrot_mouse_entered():
	curSeed = "mangocarrot"
	hover = true



func _on_mangocarrot_mouse_exited():
	hover = false



func _on_milkroot_mouse_entered():
	curSeed = "milkroot"
	hover = true



func _on_milkroot_mouse_exited():
	hover = false



func _on_potato_mouse_entered():
	curSeed = "potato"
	hover = true



func _on_potato_mouse_exited():
	hover = false



func _on_radish_mouse_entered():
	curSeed = "radish"
	hover = true



func _on_radish_mouse_exited():
	hover = false



func _on_tomato_mouse_entered():
	curSeed = "tomato"
	hover = true



func _on_tomato_mouse_exited():
	hover = false

func _physics_process(delta):
	if hover != hoverChange:
		hovering.emit(hover)
		hoverChange = hover
