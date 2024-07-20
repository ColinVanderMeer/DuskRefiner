extends SpotLight3D

var timer = null

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = randf_range(0.2, 0.4)
	timer.timeout.connect(on_timer_timeout)
	timer.start()


func on_timer_timeout():
	timer.wait_time = randf_range(0.2, 0.4)
	light_energy = randf_range(45, 60)
