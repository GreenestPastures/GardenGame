extends CanvasLayer

signal hovering(state)
signal shopButtonPress()
var hover = false


func _input(event):
	if event.is_action_pressed("click") && hover:
		shopButtonPress.emit()

func _on_color_rect_mouse_entered():
	hover = true
	hovering.emit(true)


func _on_color_rect_mouse_exited():
	hover = false
	hovering.emit(false)
