extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/select_screen.tscn")


func _on_h_slider_value_changed(value):
	set_music_bus_vol(value)
	$Panel/Music_percent.text = "%d%%" % (value )

func set_music_bus_vol( value: float) -> void:
	AudioServer.set_bus_volume_db(1, linear_to_db(value))
	# mutes server if put close to 0
	AudioServer.set_bus_mute(1, value < 0.01)
