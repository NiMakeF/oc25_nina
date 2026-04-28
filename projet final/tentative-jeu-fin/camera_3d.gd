extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	var input = Vector3.ZERO
	input.x = Input.get_axis('gauche', 'droite')
	input.z = Input.get_axis('avance', 'recule')
	print(input)
	position += basis * input * 0.1
	
