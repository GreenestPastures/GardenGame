extends Sprite2D
@export var speed = 400
@export var direction = Vector2()
var movePos = Vector2()
var t = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	t += delta * 0.1
	position = position.lerp(movePos, t)



func _input(event):
	if event.is_pressed():
		direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		movePos = position+(direction*speed)
		t = 0
