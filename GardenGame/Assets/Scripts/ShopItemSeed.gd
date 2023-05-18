extends Sprite2D

signal chosenItem(seedName, seedTexture)

@export var seed4Sale = 1
@export var seedNames: Array[String]
@export var seedPic: Array[AtlasTexture]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Fruit.texture = seedPic[seed4Sale-1]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
