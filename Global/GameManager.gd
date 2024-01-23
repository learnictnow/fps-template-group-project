extends Node

var previous_scene: String
var final_time: float = 0.0
var final_deaths: int = 0
@export var game_length = 5

#var level_mr_thawley = false
var level_dict = {}



# Called when the node enters the scene tree for the first time.
func _ready():
	level_dict["Mr Thawley"] = false
	level_dict["A1"] = false
	level_dict["A2"] = false
	level_dict["A3"] = false
	level_dict["A4"] = false
	level_dict["A5"] = false
	level_dict["A6"] = false
	
	level_dict["B1"] = false
	level_dict["B2"] = false
	level_dict["B3"] = false
	level_dict["B4"] = false
	level_dict["B5"] = false
	level_dict["B6"] = false
	
	level_dict["C1"] = false
	level_dict["C2"] = false
	level_dict["C3"] = false
	level_dict["C4"] = false
	level_dict["C5"] = false
	level_dict["C6"] = false
	
	level_dict["D1"] = false
	level_dict["D2"] = false
	level_dict["D3"] = false
	level_dict["D4"] = false
	level_dict["D5"] = false
	level_dict["D6"] = false
	
	level_dict["E1"] = false
	level_dict["E2"] = false
	level_dict["E3"] = false
	level_dict["E4"] = false
	level_dict["E5"] = false
	level_dict["E6"] = false
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func change_to_previous_scene():
	get_tree().change_scene_to_file(previous_scene)
	
func change_scene(scene):
	get_tree().change_scene_to_file(scene)
