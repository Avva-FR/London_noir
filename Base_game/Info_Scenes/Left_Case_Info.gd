extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var l_pp1_text_label = $LCaseInfoText/L_PP1_Text
	var lpp2_pic1 = $Koch
	var lpp2_pic2 = $Messer
	if GlobalVars.l_pp1_solved == false and GlobalVars.cur_l_plotpoint == "L_PP1":
		lpp2_pic1.visible = false
		lpp2_pic2.visible = false
		
	else:
		l_pp1_text_label.visible = false
		lpp2_pic1.visible = true
		lpp2_pic2.visible = true
		




func _on_exit_button_pressed():
	self.hide()

