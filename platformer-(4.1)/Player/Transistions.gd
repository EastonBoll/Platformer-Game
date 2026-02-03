extends CanvasLayer

onready var animationPlayer = $AnimationPlayer

signal transistion_completed

func exit_level_transistion():
	animationPlayer.play("ExitLevel")

func play_enter_transistion():
	animationPlayer.play("EnterLevel")


func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("transistion_completed")
