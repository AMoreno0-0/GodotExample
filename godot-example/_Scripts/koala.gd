extends Node3D

@export var speed:float = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("dance")
	
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		position = position + Vector3.BACK * speed * delta
		$AnimationPlayer.play("walk")
	else:
		$AnimationPlayer.play("dance")
	
