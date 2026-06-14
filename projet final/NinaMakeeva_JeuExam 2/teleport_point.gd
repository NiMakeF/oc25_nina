extends Area3D

@export_file("gpu.tscn") var target_scene: String
@export var spawn_location: Vector3 = Vector3(0, 1, 0) # Target 3D coordinates

func _on_body_entered(body: Node3D) -> void:
	print("Something entered the teleporter: ", body.name) # Add this line
	if body.is_in_group("Player"): # Assign your player to this group
		print("Player detected! Changing scene...") # Add this line
		GameManager.target_position_3d = spawn_location
		GameManager.should_teleport = true
		call_deferred("change_scene")
		

func change_scene():
	get_tree().change_scene_to_file(target_scene)
