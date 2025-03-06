extends CanvasLayer

signal transition_halfway

var skip_emit = false


func transition():
	$AnimationPlayer.play("default")
	await transition_halfway
	$AnimationPlayer.play_backwards("default")


func emit_transitioned_halfway():
	if skip_emit:
		skip_emit = false
		return
	
	transition_halfway.emit()
