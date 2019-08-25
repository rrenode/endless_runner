extends Control

export(NodePath) var player

func _process(delta):
	if get_parent().get("alive") == true:
		var pos = int(round(get_node(player).get_global_transform().origin.x + 22))
		pos = String(pos)
		$score.text = pos
		$score2.text = pos
		get_node("../winUI/Score/score").text = pos