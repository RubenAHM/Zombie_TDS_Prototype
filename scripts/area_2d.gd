extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.hitbox = true
		body.invul = false
		body.dmg_tkn = 10
	

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.invul = true
