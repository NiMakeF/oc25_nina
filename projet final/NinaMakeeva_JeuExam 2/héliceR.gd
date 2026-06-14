
extends Area3D

@export_file("llm.tscn") var target_scene: String
@export var spawn_location: Vector3 = Vector3(0, 1, 0) # Target 3D coordinates

func _on_body_entered(body):
	print("COLLISION:", body.name)
	if body.is_in_group("Player"): # Assign your player to this group
		print("Player detected! Changing scene...") # Add this line
		GameManager.target_position_3d = spawn_location
		GameManager.should_teleport = true
		get_tree().change_scene_to_file(target_scene)
