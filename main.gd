extends Node

export(bool) var alive = true

func _ready():
	$Control/Restart.visible = false
	$Control/score2.visible = false
	$pause.visible = false
	$winUI.visible = false
	get_tree().paused = false

# warning-ignore:unused_argument
func _process(delta):
	if alive == false:
		if Input.is_action_pressed("ui_select"):
# warning-ignore:return_value_discarded
			get_tree().reload_current_scene()
		if Input.is_action_just_pressed("ui_accept"):
			MainMenu()
	else:
		if Input.is_action_just_pressed("ui_cancel"):
			pause()

func MainMenu():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://start_menu.tscn")
	print("To Start Screen")

func GameOver():
	alive = false
	$player.queue_free()
	$Control/Restart.visible = true
	$Control/score.visible = false
	$Control/score2.visible = true
	$Control/Restart/restart/anim.play("text_load")
	$Control/Restart/menu/anim.play("text_load")
	print("dead nibba")

func GameWin():
	$player.queue_free()
	$winUI.visible = true
	get_tree().paused = true

func pause():
	get_tree().paused = true
	$pause.visible = true

func _on_resumebtn_pressed():
	$pause.visible = false
	get_tree().paused = false
	print("unpause")

func _on_menubtn_pressed():
	MainMenu()

func _on_win_area_entered(area):
	if area.get_owner().get_name() == "player":
		GameWin()