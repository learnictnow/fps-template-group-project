extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.previous_scene = scene_file_path
	
	if $Player.has_method("set_time_pause"):
		$Player.set_time_pause(true)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_mr_thawley_body_entered(body):
	if body.is_in_group("Player"):
		#get_tree().change_scene_to_file("res://Example/Level/level_MrThawley.tscn")
		GameManager.change_scene("res://Example/Level/level_MrThawley.tscn")
	pass # Replace with function body.
