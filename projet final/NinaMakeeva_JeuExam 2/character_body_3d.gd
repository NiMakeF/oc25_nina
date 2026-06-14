extends CharacterBody3D


const WALK_SPEED = 5.0
const SPRINT_SPEED = 9.0
const JUMP_VELOCITY = 3.5


@onready var camera_pivot = $CameraPivot
@onready var footsteps = $"../footsteps"
var mouse_sensitivity = 0.003
var can_interact = false

var loop_start = 1  # seconds
var loop_end = 5



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("saute") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("gauche", "droite", "avance", "recule")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * WALK_SPEED
		velocity.z = direction.z * WALK_SPEED
	else:
		velocity.x = 0
		velocity.z = 0
	var current_speed = WALK_SPEED

	if Input.is_action_pressed("sprint"):
		current_speed = SPRINT_SPEED

		velocity.x = direction.x * current_speed
		velocity.z = direction.z * current_speed
	move_and_slide()
	
	if footsteps.playing:
		if footsteps.get_playback_position() >= loop_end:
			footsteps.seek(loop_start)
	
	if input_dir.length() > 0 and is_on_floor():
		if not footsteps.playing:
			footsteps.play()
	else:
		footsteps.stop()
		
	if Input.is_action_pressed("sprint"):
		footsteps.pitch_scale = 2
	else:
		footsteps.pitch_scale = 1.5


func _input(event):

	if event is InputEventMouseMotion:

		# Left / Right
		rotate_y(-event.relative.x * mouse_sensitivity)

		# Up / Down
		camera_pivot.rotation.x -= event.relative.y * mouse_sensitivity

		# Prevent camera flip
		camera_pivot.rotation.x = clamp(
			camera_pivot.rotation.x,
			deg_to_rad(-45),
			deg_to_rad(15)
		)
func _ready() -> void:
	if GameManager.should_teleport:
		global_position = GameManager.target_position_3d
		GameManager.should_teleport = false # Reset the trigger
		print("Player successfully spawned at position: ", global_position)
