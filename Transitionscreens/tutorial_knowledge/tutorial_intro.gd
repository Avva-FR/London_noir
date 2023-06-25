extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_menu_1_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_intro.tscn")
	
func _on_menu_2_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_entity.tscn")

func _on_menu_3_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_attribute.tscn")

func _on_menu_4_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_relation.tscn")

func _on_menu_5_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_er_modell.tscn")


func _on_knowledge_next_pressed():
	get_tree().change_scene_to_file("res://Transitionscreens/tutorial_knowledge/tutorial_entity.tscn")
