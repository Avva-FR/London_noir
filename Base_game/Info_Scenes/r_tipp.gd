extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var r_pp1_label1 = $Speechbubble/R_pp1_tip1
	var r_pp1_label2 = $Speechbubble/R_pp1_tip2
	var r_pp1_label3 = $Speechbubble/R_pp1_tip3
	var r_pp2_label1 = $Speechbubble/R_pp2_tip1
	var r_pp2_label2 = $Speechbubble/R_pp2_tip2
	var r_pp2_label3 = $Speechbubble/R_pp2_tip3
	r_pp1_label1.hide()
	r_pp1_label2.hide()
	r_pp1_label3.hide()
	r_pp2_label1.hide()
	r_pp2_label2.hide()
	r_pp2_label3.hide()
	print(GlobalVars.cur_r_plotpoint)
	print(GlobalVars.r_pp1_solved)
	print(GlobalVars.r_tip_count)
	
	if GlobalVars.cur_r_plotpoint == "R_PP1" and GlobalVars.r_pp1_solved == false and GlobalVars.r_tip_count == 1:
		r_pp1_label1.show()
	elif GlobalVars.cur_r_plotpoint == "R_PP1" and GlobalVars.r_pp1_solved == false and GlobalVars.r_tip_count == 2:
		r_pp1_label1.hide()
		r_pp1_label2.show()
	elif GlobalVars.cur_r_plotpoint == "R_PP1" and GlobalVars.r_pp1_solved == false and GlobalVars.r_tip_count >= 3:
		r_pp1_label1.hide()
		r_pp1_label2.hide()
		r_pp1_label3.show()
	elif GlobalVars.cur_r_plotpoint == "R_PP2" and GlobalVars.r_pp1_solved == true and GlobalVars.r_tip_count == 1:
		r_pp2_label1.show()
	elif GlobalVars.cur_r_plotpoint == "R_PP2" and GlobalVars.r_pp1_solved == true and GlobalVars.r_tip_count == 2:
		r_pp2_label1.hide()
		r_pp2_label2.show()
	elif GlobalVars.cur_r_plotpoint == "R_PP2" and GlobalVars.r_pp1_solved == true and GlobalVars.r_tip_count >= 3:
		r_pp2_label1.hide()
		r_pp2_label2.hide()
		r_pp2_label3.show()


func _on_texture_button_pressed():
	self.hide()
