extends Area3D

@export_file("scn_data.tscn") var target_scene: String
@export var spawn_location: Vector3 = Vector3(0, 1, 0)
@onready var label = $Label3D


var player_near := false

func _on_body_entered(body):
	print('ENTER', body.name)
	if body.is_in_group("Player"):
		print('DID ENTER')
		player_near = true
		label.visible = true
		

func _on_body_exited(body):
	print('EXIT', body.name)
	if body.is_in_group("Player"):
		print('DID EXIT')
		player_near = false
		player_near = true
		label.visible = true


func _process(delta):
	if player_near and Input.is_action_just_pressed("Act"):
		print("Button pressed!")
		GameManager.target_position_3d = spawn_location
		GameManager.should_teleport = true
		get_tree().change_scene_to_file(target_scene)
