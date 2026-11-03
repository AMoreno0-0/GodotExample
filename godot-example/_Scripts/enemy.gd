extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.x -= 200 * delta


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		body.restart_level()
