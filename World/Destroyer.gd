extends Area2D

func _on_Area2D_body_entered(body):
	print("sup")
	body.global_position = Vector2(100,0)
