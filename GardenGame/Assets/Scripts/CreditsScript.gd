extends Node2D

var page = 0
var prevPage = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_button_button_down():
	pass # Replace with function body.


func _on_button_button_up():
	page+=1
	if page>get_child_count()-1:
		page = 0
	get_child(prevPage).visible = false
	get_child(page).visible = true
	prevPage = page
	pass # Replace with function body.
