extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_texture_button_2_button_up():
	get_tree().change_scene_to_file("res://Base_game/Base_Game.tscn")
