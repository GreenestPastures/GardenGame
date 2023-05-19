extends AnimatedSprite2D

@export var growthTime = 10
@export var value = 10
var growthPhases
var hover = false
var harvestable = false
signal hovering(state)
signal harvested()


#When new plant made sets the animation, defines the length, and begins the growing function
func _ready():
	var curAnim = animation
	growthPhases = sprite_frames.get_frame_count(curAnim)
	print(growthPhases)
	GrowCounter(growthTime)

#Grow 1 tick per second, breaks down the animation frames to match the growtime (eg. 6 frames over 10 seconds)
func GrowCounter(growTime):
	#we define a variable of 0 which we can't do in the same line as while anymore???
	var t = 0
	while t < growthTime:
		#Await replaces yield, the line below creates a 1 second timer in our tree (Hierarchy)
		await get_tree().create_timer(1).timeout
		t += 1
		var growPercent = 0.01*(t*(100/growTime))
		set_frame_and_progress(round(growthPhases*growPercent)-1, 1)
	if t == growthTime:
		harvestable = true


func _on_color_rect_mouse_entered():
	hover = true
	hovering.emit(hover)


func _on_color_rect_mouse_exited():
	hover = false
	hovering.emit(hover)
	

func _input(event):
	if event.is_action_pressed("click") && hover:
		harvest()


func harvest():
	if harvestable:
		get_tree().root.get_node("/root/Stats").money += value
		harvested.emit()
		queue_free()


