extends StaticBody2D


var Bullet = preload("res://RedTower/red_tower.tscn")
var bulletDamage = 5
var pathName
var currentTower = []
var current


func _on_range_body_entered(body):
	if "Soldier A" in body.name:
		pass

func _on_range_body_exited(body):
	pass # Replace with function body.
