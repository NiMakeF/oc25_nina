extends PathFollow3D
@onready var light = $OmniLight3D

var speed = 5.0

func _process(delta):
	progress += speed * delta
	

	if progress_ratio >= 1.0:
		progress_ratio = 0.0
	
	if progress_ratio >0 and progress_ratio <0.2: 
		light.light_color = Color.YELLOW
		
	if progress_ratio >=0.2 and progress_ratio <0.4 : 
		light.light_color = Color.SEA_GREEN
		
	if progress_ratio >=0.4 and progress_ratio <0.6: 
		light.light_color = Color.CADET_BLUE
		
	if progress_ratio >= 0.6 and progress_ratio <=0.75 : 
		light.light_color = Color.REBECCA_PURPLE
		
	if progress_ratio >0.75 and progress_ratio <1 : 
		light.light_color = Color.RED
