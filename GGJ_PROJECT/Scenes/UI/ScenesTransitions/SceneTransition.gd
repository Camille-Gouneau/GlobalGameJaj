extends CanvasLayer

signal transitionned

func transition():
	$AnimationPlayer.play("fade_to_black")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == 'fade_to_black':
		emit_signal("transitionned")
		$AnimationPlayer.play("fade_to_normal")