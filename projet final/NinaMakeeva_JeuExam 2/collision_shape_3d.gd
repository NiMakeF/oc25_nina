extends CollisionShape3D


var rotation_speed = 90.0 # degrees per second

func _process(delta):
	rotation_degrees.x += rotation_speed * delta
