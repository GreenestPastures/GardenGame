extends AnimatedSprite2D

@export var growthTime = 10
var growthPhases

# Called when the node enters the scene tree for the first time.
func _ready():
	var curAnim = animation
	growthPhases = sprite_frames.get_frame_count(curAnim)
	print(growthPhases)
	GrowCounter(growthTime)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func GrowCounter(growTime):
	var t = 0
	while t < growthTime:
		await get_tree().create_timer(1).timeout
		t += 1
		var growPercent = 0.01*(t*(100/growTime))
		set_frame_and_progress(round(growthPhases*growPercent)-1, 1)
		
