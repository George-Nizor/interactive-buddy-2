class_name EffectsPlayer extends Node

@export var sprite: AnimatedSprite2D
@export var Character: Node2D
@export var ExplosionScene: PackedScene = preload("res://Scenes/Effects/Explosion.tscn")


func hit_effect():
	sprite.modulate = Color.RED
	await get_tree().create_timer(0.1).timeout
	sprite.modulate = Color.WHITE
	
func heal_effect():
	sprite.modulate = Color.GREEN
	await get_tree().create_timer(0.1).timeout
	sprite.modulate = Color.WHITE
	
func death_effect():
	pass
	
func explosion_effect(position):
	var explosion = ExplosionScene.instantiate()
	get_tree().current_scene.add_child(explosion)
	explosion.global_position = position
	explosion.get_node("_particleEffect").emitting = true
