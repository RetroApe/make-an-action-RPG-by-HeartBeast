extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func _on_Hurtbox_area_entered(area):
	var grassEffect = GrassEffect.instance()
#	var world = get_tree().current_scene
#	world.add_child(grassEffect)
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position
	
#	get_parent().add_child(grassEffect)
#	grassEffect.position = self.position
	
	queue_free()
