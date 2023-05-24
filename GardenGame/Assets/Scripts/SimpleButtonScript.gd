extends Button

@export var loadThis = PackedScene.new()
@export var playButton = false
@export var quitButton = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	get_child(1).visible = false


func _on_button_up():
	get_child(1).visible = true
	if playButton:
		get_tree().change_scene_to_packed(loadThis)
	elif quitButton:
		get_tree().quit()
	
