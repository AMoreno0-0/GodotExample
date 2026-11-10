extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var time:int = 99
	while time > 0:
		await get_tree().create_timer(1.0).timeout
		time -= 1
		text = str(time)
