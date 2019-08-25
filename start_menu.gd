extends Control
var scene = preload("res://main.tscn")

func _ready():
	$startGame.disabled = true
	$title/anim.play("start")

func _on_anim_animation_finished(anim_name):
	$startGame.disabled = false
	$startGame/anim.play("blink")

func _on_startGame_pressed():
	get_tree().change_scene_to(scene)