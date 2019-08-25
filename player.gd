extends KinematicBody

var dir = Vector3(20,0,0)
export(int) var z_speed = 4

func _ready():
	var player = get_node(".")
	$hitbox.connect("area_entered",player,"player_collision")

func _physics_process(delta):
	#Player movement on the z axis | Left and Right when relative to player
	if Input.is_action_pressed("ui_left"):
		dir.z = clamp(-1 + dir.z,-z_speed,z_speed)
	elif Input.is_action_pressed("ui_right"):
		dir.z = clamp(1 + dir.z,-z_speed,z_speed)
	else:
		dir.z = 0

	move_and_slide(dir, Vector3(0,0,0))

func player_collision(area):
	var ting = str(area.get_owner().get_parent().get_name())
	print(ting)
	if ting == "obstacles":
		get_parent().GameOver()