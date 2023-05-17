extends Camera2D

@export var scrollSpeed = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		print(event.position)
		
#		var space_state = get_world_2d().direct_space_state
#		var query = PhysicsRayQueryParameters2D.create(Vector2(0, 0), Vector2(50, 100))
#		var result = space_state.intersect_ray(query)
#		print(result)



