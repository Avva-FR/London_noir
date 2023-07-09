extends Control

var sceneinstance = self

# Called when the node enters the scene tree for the first time.
func _ready():
	var r_pp1_text_label = $RCaseinfoTexture/R_PP1_Text
	var r_pp2_pic = $Waffendisplay
	if GlobalVars.r_pp1_solved == false and GlobalVars.cur_r_plotpoint == "R_PP1":
		r_pp2_pic.visible = false
	else:
		r_pp1_text_label.visible = false
		r_pp2_pic.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_r_exit_button_pressed():
	self.hide()
