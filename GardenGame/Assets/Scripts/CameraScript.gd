extends Camera2D

@export var scrollSpeed = 200
var moveIncrement = 0.0
var movePos = Vector2()
var direction = Vector2()
var hovering = false
signal planting_plant(pos)


func _ready():
		get_node("/root/Stats").connectThisOnLoad()

func _input(event):
	if event.is_action_pressed("click") && !hovering:
		print(event.position)
		print(get_global_mouse_position())
		planting_plant.emit(get_global_mouse_position())


	if event.is_action_pressed("rightClick"):
		movePos = get_global_mouse_position()
		moveIncrement = 0


func _physics_process(delta):
	moveIncrement += delta * 0.1
	position = position.lerp(movePos, moveIncrement)



func _on_hotbar_hovering(state):
	hovering = state


