extends CharacterBody3D
@export var mouse_sensitivity := 0.002
var rotation_x := 0.0

@onready var camera = $LaCam

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		# Horizontal rotation (left/right)
		rotate_y(-event.relative.x * mouse_sensitivity)

		# Vertical rotation (up/down)
		rotation_x -= event.relative.y * mouse_sensitivity
		rotation_x = clamp(rotation_x, deg_to_rad(-90), deg_to_rad(90))

		camera.rotation.x = rotation_x
