extends TextureRect

var data = {}
var origin_texture
var original_node: String
var temp_node_l: String
var origin_node: String
var target_node: String
var subStr = "L_PP"

var init_ldb1
var init_ldb2
var init_ldb3
var init_rdb1
var init_rdb2
var init_rdb3

var ldb1_text
var ldb2_text
var ldb3_text
var rdb1_text
var rdb2_text
var rdb3_text
 
func _get_drag_data(at_position):
	data["origin_node"] = self
	data["origin_name"] = get_name()
	data["origin_texture"] = texture
	# drag preview part
	var drag_preview = TextureRect.new()
	drag_preview.expand = true
	drag_preview.texture = texture
	drag_preview.size = size
	
	var control = Control.new()
	control.add_child(drag_preview)
	drag_preview.position = -0.5 * drag_preview.size
	set_drag_preview(control)
		
	return data

func _can_drop_data(at_position, data):
	return true

func _drop_data(at_position, data):
	origin_texture = data["origin_texture"]
	origin_node = data["origin_name"]
	
	# name of object dropped toblue
	target_node = get_name()
	# swap textures
	data["origin_node"].texture = texture
	texture = origin_texture
	append_node_name()
	check_L_PP1_success()
	
func append_node_name() -> void:
	# drag to ldb1
	if target_node == "Drop_Box_L1":
		if subStr in origin_node and origin_node != null:
			init_ldb1 = origin_node
			print("init setter on node 1: ",init_ldb1)
			print(init_ldb2)
		elif origin_node == "Drop_Box_L2":
			ldb1_text = init_ldb2
			ldb2_text = init_ldb1
			print("on node 1ldb1 text:", ldb1_text, "ldb2text", ldb2_text)
			print("target db1 source db2")
			#else:
			#	print("well they are null", init_ldb1, init_ldb2)
		elif origin_node == "Drop_Box_L3":
			if init_ldb1 != null and init_ldb3 != null:
				ldb1_text = init_ldb3
				ldb3_text = init_ldb1
				print("target db1 source db3")
	# drag to ldb2
	elif target_node == "Drop_Box_L2":
		if subStr in origin_node and origin_node != null:
			init_ldb2 = origin_node
			print("init setter on node 2: ",init_ldb2)
			print(init_ldb1)
		elif origin_node == "Drop_BoxL1":
			if init_ldb1 != null and init_ldb2 != null:
				ldb1_text = init_ldb2
				ldb2_text = init_ldb1
		elif origin_node == "Drop_Box_L3":
			if init_ldb2 != null and init_ldb3 != null:
				ldb2_text = init_ldb3
				ldb3_text = init_ldb2
	# drag to ldb 3
	elif target_node == "Drop_Box_L3":
		if subStr in origin_node and origin_node != null:
			init_ldb3 = origin_node
		elif origin_node == "Drop_Box_L1":
			if init_ldb1 != null and init_ldb3 != null:
				ldb1_text = init_ldb3
				ldb3_text = init_ldb1
		elif origin_node == "Drop_Box_L2":
			if init_ldb2 != null and init_ldb3 != null:
				ldb2_text = init_ldb3
				ldb3_text = init_ldb2
		



func check_L_PP1_success() -> bool:
	if ldb1_text == "L_PP1_true1" and ldb2_text == "L_PP1_true2" and ldb3_text == "L_PP1_true":
		return true
	else:
		return false
		
func check_L_PP2_success() -> bool:
	if ldb1_text == "L_PP2_true1" and ldb2_text == "L_PP2_true2" and ldb3_text == "L_PP2_true3":
		return true
	else:
		return false
		
func check_L_PP3_success() -> bool:
	if ldb1_text == "L_PP3_true1" and ldb2_text == "L_PP3_true2" and ldb3_text == "L_PP3_true3":
		return true
	else:
		return false

func check_L_PP4_success() -> bool:
	if ldb1_text == "L_PP4_true1" and ldb2_text == "L_PP4_true2" and ldb3_text == "L_PP4_true3":
		return true
	else:
		return false

func check_R_PP1_success() -> bool:
	if rdb1_text == "R_PP1_true1" and rdb2_text == "R_PP1_true2" and rdb3_text == "R_PP1_true":
		return true
	else:
		return false
		
func check_R_PP2_success() -> bool:
	if rdb1_text == "R_PP2_true1" and rdb2_text == "R_PP2_true2" and rdb3_text == "R_PP2_true3":
		return true
	else:
		return false
		
func check_R_PP3_success() -> bool:
	if rdb1_text == "R_PP3_true1" and rdb2_text == "R_PP3_true2" and rdb3_text == "R_PP3_true3":
		return true
	else:
		return false

func check_R_PP4_success() -> bool:
	if rdb1_text == "R_PP4_true1" and rdb2_text == "R_PP4_true2" and rdb3_text == "R_PP4_true3":
		return true
	else:
		return false
