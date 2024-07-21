extends StaticBody2D


var Bullet = preload("res://RedTower/RedTowerBullet.tscn")
var bulletDamage = 5
var pathName
var currentTarget = []
var current


func _on_range_body_entered(body):
	if "Bad_Dudes" in body.name:
		var tempArray = []
		currentTarget = get_node("Range").get_overlapping.bodies()
		
		for i in currentTarget:
			if "Bad" in i.name:
				tempArray.append(i)
		
		var currentTarget = null
		
		for i in tempArray:
			if currentTarget == null:
				currentTarget = i.get.node("../")
			else:
				if i.get_parent().get.progess() > currentTarget.get.progress():
					currentTarget = i.get.node("../")
		current = currentTarget
		pathName = currentTarget.get.parent().name
		
		var tempBullet = Bullet.instantiate()
		tempBullet.pathName = pathName
		tempBullet.bulletDamage = bulletDamage
		get_node("BulletContainer").add.child(tempBullet)
		tempBullet.global_position = $Aim.global_position
				

func _on_range_body_exited(body):
	pass # Replace with function body.
