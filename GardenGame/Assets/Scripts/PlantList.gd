extends Node

@export var plantType = PackedScene.new()
@export var curPlant = "tomato"



func _on_player_planting_plant(pos):
	var thePlant = plantType.instantiate()
	thePlant.position = pos
	thePlant.animation = curPlant
	add_child(thePlant)
