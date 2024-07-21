extends CharacterBody2D


@export var speed = 1000
var Health = 10

func _physics_process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	
	if get_parent().get_progress_ratio() == 1:
		death()
		Game.Health -= 1
		
	if Health <= 0:
		death()
		Game.Gold += 1
	
func death():
	get_parent().get_parent().queue_free()




#extends Node2D
#@export var speed = 10




## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	#get_parrent is referening to the parrent NODE, in this case, the PathFollow2D in MAIN 
#	get_parent().set_progress(get_parent().get_progress() + speed+delta) 
	#if get_parent().get_progress_ratio() == 1:
#		queue_free()
