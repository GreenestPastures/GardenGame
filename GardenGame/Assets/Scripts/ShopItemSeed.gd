extends TextureRect

signal chosenItem(seedName)

@export var seed4Sale = 1
@export var seedNames: Array[String]
@export var seedPic: Array[AtlasTexture]

var hovering = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Fruit.texture = seedPic[seed4Sale-1]
	connect("mouse_entered", amHover)
	connect("mouse_exited", amNotHover)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if event.is_action_pressed("click") && hovering:
		chosenItem.emit(seedNames[seed4Sale-1])

func amHover():
	hovering = true



func amNotHover():
	hovering = false
