extends Node3D

var level_name

signal level_complete

# Called when the node enters the scene tree for the first time.
func _ready():
	#level_complete.connect(test)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if body.is_in_group("Player"):
		print("Level complete!")
		GameManager.level_dict[level_name] = true
		print(GameManager.level_dict)
		get_tree().change_scene_to_file("res://Example/LevelSelectRoom/LevelSelectRoom.tscn")
		#level_complete.emit()
	pass # Replace with function body.

func test():
	print("Signal detected")
