extends RigidBody3D

var move_force:float = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		add_constant_force(Vector3.FORWARD * move_force * delta)
	if Input.is_action_pressed("move_down"):
		add_constant_force(Vector3.BACK * move_force * delta)
	if Input.is_action_pressed("move_right"):
		add_constant_force(Vector3.RIGHT * move_force * delta)
	if Input.is_action_pressed("move_left"):
		add_constant_force(Vector3.LEFT * move_force * delta)
