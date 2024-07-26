extends Node2D

@onready var path = preload("res://Stages/stage1.tscn")

func _on_timer_timeout():
	var temppath = path.instantiate()
	add_child(temppath)
