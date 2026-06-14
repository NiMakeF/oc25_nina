extends Area3D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.show_interaction()

func _on_body_exited(body):
	if body.is_in_group("Player"):
		body.hide_interaction()
