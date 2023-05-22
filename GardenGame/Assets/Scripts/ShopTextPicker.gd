extends Label

@export var seedList: Array[String]
@export var seedNames: Array[String]
@export var SeedFlavor: Array[String]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func chosen_item(seedName):
	for i in seedList.size():
		if seedName == seedList[i]:
			text = seedNames[i]
			get_parent().get_node("BodyText").text = SeedFlavor[i]
	pass # Replace with function body.
