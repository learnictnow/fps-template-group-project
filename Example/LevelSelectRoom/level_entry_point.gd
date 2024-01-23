extends Marker3D

@export var leveltitle:String
@export_file("*.tscn") var level_scene_title:String

# Called when the node enters the scene tree for the first time.
func _ready():
	if GameManager.level_dict[leveltitle] == true:
		$Area3D.process_mode = Node.PROCESS_MODE_DISABLED
	$Label3D.text = leveltitle
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	GameManager.change_scene(level_scene_title)
	pass # Replace with function body.
