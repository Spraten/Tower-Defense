#@export var speed = 1000
#var Health = 10

#func _physics_process(delta):
#	get_parent().set_progress(get_parent().get_progress() + speed*delta)
#	
#	if get_parent().get_progress_ratio() == 1:
#		death()
#		Game.Health -= 1
#		
#	if Health <= 0:
#		death()
#		Game.Gold += 1
#	
#func death():
#	get_parent().get_parent().queue_free()

# Speed of the unit in pixel/sec
@export var speed = 40
@onready var animation_player = $AnimationPlayer

# Number of hit points
var health = 50.0

# Number of Armor points
var armor = 2

# Number of damage points done by the unit when it reaches its goal
var damage = 1

# Number of coins gained when the unit is destroyed
var reward = 5

# Number of seconds since the unit died
var dead_since = 0

# References to other nodes


# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("Idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# get_parent is referring to the parent NODE, in this case, the PathFollow2D in MAIN
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()
