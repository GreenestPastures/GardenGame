extends Node

@export var plantType = PackedScene.new()


func _on_player_planting_plant(pos, plant):
	var thePlant = plantType.instantiate()
	thePlant.position = pos
	thePlant.animation = plant
	add_child(thePlant)
