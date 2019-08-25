extends Camera

export(NodePath) var player
export(Vector3) var offset

func _ready():
	rotate_z(0)
	set_physics_process(true)
	
func _physics_process(delta):

	if get_parent().get("alive") == true:
		var player_dir = get_node(player).get_global_transform().origin
		var pos = player_dir + offset
		var offseta = Vector3(0,offset.y,0)
		look_at_from_position(pos, player_dir,offseta)
	else:
		pass