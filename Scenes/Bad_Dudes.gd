extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#get_parrent is referening to the parrent NODE, in this case, the PathFollow2D in MAIN 
	get_parent().set_progress(get_parent().get_progress() + speed+delta) 
	if get_parent().get_progress_ratio() == 1:
		queue_free()
