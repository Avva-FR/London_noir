extends Control

var press_count = 0
var pos_showcase
var text1
var text2 
# Called when the node enters the scene tree for the first time.
func _ready():
	pos_showcase = $PositionDisplay
	pos_showcase.hide()
	text1 = $Text1
	text2 = $Text2
	text2.hide()
	

func _on_texture_button_pressed():
	press_count += 1
	if press_count == 1:
		text1.hide()
		pos_showcase.show()
	if press_count == 2:
		pos_showcase.hide()
		text2.show()
	if press_count == 3:
		get_tree().change_scene_to_file("res://Base_game/Base_Game.tscn")
