extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var l_pp1_text_label = $LCaseInfoText/L_PP1_Text
	if GlobalVars.l_pp1_solved == false and GlobalVars.cur_l_plotpoint == "L_PP1":
		pass
	else:
		l_pp1_text_label.visible = false




func _on_exit_button_pressed():
	self.hide()

