extends CharacterBody2D

@onready var target = get_tree().get_first_node_in_group("Player")

const SPEED = 0.0
var hitbox = false
var life = 200
func _physics_process(delta: float) -> void:
	if hitbox:
		#hit_sound()
		#take_damage()
		hitbox = false
	if life > 0:
		var direction = (target.position - position).normalized()
		velocity = direction * SPEED
		look_at(target.position)
		move_and_slide()
	else:
		queue_free()
func take_damage(amount):
	life -= amount
	#print(life)
	#print(amount)
