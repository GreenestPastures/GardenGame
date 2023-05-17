extends AnimatedSprite2D

@export var growthTime = 20
var growthPhases

# Called when the node enters the scene tree for the first time.
func _ready():
	var curAnim = animation
	growthPhases = sprite_frames.get_frame_count(curAnim)
	print(growthPhases)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
