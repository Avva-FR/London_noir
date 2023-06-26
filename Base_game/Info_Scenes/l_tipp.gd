extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	var l_pp1_label1 = $Speechbubble/L_pp1_tip1
	var l_pp1_label2 = $Speechbubble/L_pp1_tip2
	var l_pp1_label3 = $Speechbubble/L_pp1_tip3
	var l_pp2_label1 = $Speechbubble/L_pp2_tip1
	var l_pp2_label2 = $Speechbubble/L_pp2_tip2
	var l_pp2_label3 = $Speechbubble/L_pp2_tip3
	l_pp1_label1.hide()
	l_pp1_label2.hide()
	l_pp1_label3.hide()
	l_pp2_label1.hide()
	l_pp2_label2.hide()
	l_pp2_label3.hide()
	
	if GlobalVars.cur_l_plotpoint == "L_PP1" and GlobalVars.l_pp1_solved == false and GlobalVars.l_tip_count == 1:
		l_pp1_label1.show()
	elif GlobalVars.cur_l_plotpoint == "L_PP1" and GlobalVars.l_pp1_solved == false and GlobalVars.l_tip_count == 2:
		l_pp1_label1.hide()
		l_pp1_label2.show()
	elif GlobalVars.cur_l_plotpoint == "L_PP1" and GlobalVars.l_pp1_solved == false and GlobalVars.l_tip_count >= 3:
		l_pp1_label1.hide()
		l_pp1_label2.hide()
		l_pp1_label3.show()
	elif GlobalVars.cur_l_plotpoint == "L_PP2" and GlobalVars.l_pp1_solved == true and GlobalVars.l_tip_count == 1:
		l_pp2_label1.show()
	elif GlobalVars.cur_l_plotpoint == "L_PP2" and GlobalVars.l_pp1_solved == true and GlobalVars.l_tip_count == 2:
		l_pp2_label1.hide()
		l_pp2_label2.show()
	elif GlobalVars.cur_l_plotpoint == "L_PP2" and GlobalVars.l_pp1_solved == true and GlobalVars.l_tip_count >= 3:
		l_pp2_label1.hide()
		l_pp2_label2.hide()
		l_pp2_label3.show()

func _on_texture_button_pressed():
	self.hide()
