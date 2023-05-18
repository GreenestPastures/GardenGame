extends Camera2D

@export var scrollSpeed = 30

signal planting_plant(pos, plant)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		print(event.position)
		print(get_global_mouse_position())
		planting_plant.emit(get_global_mouse_position(), "tomato")



