extends Node2D

@export var speed = 100

# Reference to the AnimationPlayer node
@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initially set the animation to idle
	animation_player.play("Idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update the enemy's progress along the path
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	
	# Check if the enemy is moving or idle
	if speed > 0:
		if not animation_player.is_playing() or animation_player.current_animation != "Move":
			animation_player.play("Walk")
	else:
		if not animation_player.is_playing() or animation_player.current_animation != "Idle":
			animation_player.play("Idle")
	
	# If the enemy has reached the end of the path, remove it from the scene
	if get_parent().get_progress_ratio() == 1:
		queue_free()
