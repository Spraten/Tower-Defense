extends CharacterBody2D


var target
var speed = 1000
var pathName = ""
var bulletDamage


func _physics_process(delta):
	var pathSpawnerNode = get_tree().get_root().get_node("Main/PathSpawner")
	
	for i in pathSpawnerNode.get_child
	
