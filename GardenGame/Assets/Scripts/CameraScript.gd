extends Camera2D

@export var scrollSpeed = 30

signal planting_plant(pos)


func _input(event):
	if event.is_action_pressed("click"):
		print(event.position)
		print(get_global_mouse_position())
		planting_plant.emit(get_global_mouse_position())




