extends Node
@export var money = 10
@export var beetroot = 3
@export var cauli = 0
@export var garlic = 0
@export var lettuce = 0
@export var mangocarrot = 0
@export var milkroot = 0
@export var potato = 0
@export var radish = 1
@export var tomato = 0
var tempNum = 0

signal makeBuy(plantToPurchase)
signal connectionThing()


# Called when the node enters the scene tree for the first time.
#func _ready():


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func purchaseCheck(seed, price):
	if price <= money:
		money -= price
		tempNum = get(seed)
		set(seed, tempNum+1)
		

func connectThisOnLoad():
	get_node("/root/Node2D/Shop").purchase.connect(purchaseCheck)

