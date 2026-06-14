extends Node3D


var rotation_speed = 120.0 # degrees per second

func _process(delta):
	rotation_degrees.x += rotation_speed * delta
