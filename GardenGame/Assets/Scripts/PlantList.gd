extends Node

@export var plantType = PackedScene.new()
@export var curPlant = "tomato"
signal hovering(state)


func _on_player_planting_plant(pos):
	var thePlant = plantType.instantiate()
	thePlant.position = pos
	thePlant.animation = curPlant
	add_child(thePlant)
	get_child(get_child_count()-1).hovering.connect(hoverChange)
	get_child(get_child_count()-1).harvested.connect(harvested)


func _on_hotbar_change_seed(seedType):
	curPlant = seedType

func hoverChange(state):
	hovering.emit(state)

func harvested():
	await get_tree().create_timer(.15).timeout
	hovering.emit(false)
