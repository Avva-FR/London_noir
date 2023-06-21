extends TextureRect

var data = {}
var origin_texture
var origin_node_instance
var origin_node: String
var target_node: String
var l_subStr = "L_PP"
var r_subStr = "R_PP"
 
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

	var origin_texture = data["origin_texture"]
	origin_texture = data["origin_texture"]
	origin_node = data["origin_name"]
	origin_node_instance = data["origin_node"]
	# name of object dropped toblue
	target_node = get_name()
	# swap textures
	# bugged rn
	#data["origin_node"].texture = texture
	#drop texture
	texture = origin_texture
	append_node()
	print(GlobalVars.ldb1_text, GlobalVars.ldb2_text, GlobalVars.ldb3_text)
	print("righto side: ", GlobalVars.rbd1_text, GlobalVars.rdb2_text, GlobalVars.rdb3_text)
	
# @ Todo i think there might be a bug cant find one as of now tho	
func append_node() -> void:
	if target_node == "Drop_Box_L1":
		if l_subStr in origin_node and origin_node != null:
			# check if we swapped nodes
			if GlobalVars.ldb1_text != null:
				var temp = GlobalVars.ldb1_text
				GlobalVars.ldb1_text = origin_node
				origin_node_instance.set_name(temp)
			else: # set nodename
				GlobalVars.ldb1_text = origin_node
		# swap node names based on origin of drag event
		elif origin_node == "Drop_Box_L2" and GlobalVars.ldb1_text != null and GlobalVars.ldb2_text != null:
			var temp = GlobalVars.ldb1_text
			GlobalVars.ldb1_text = GlobalVars.ldb2_text
			GlobalVars.ldb2_text = temp
		elif origin_node == "Drop_Box_L3" and GlobalVars.ldb1_text != null and GlobalVars.ldb3_text != null:
			var temp = GlobalVars.ldb1_text
			GlobalVars.ldb1_text = GlobalVars.ldb3_text
			GlobalVars.ldb3_text = temp
	elif target_node == "Drop_Box_L2":
		if l_subStr in origin_node and origin_node != null:
			# check if we swapped nodes
			if GlobalVars.ldb2_text != null:
				var temp1 = GlobalVars.ldb2_text
				GlobalVars.ldb2_text = origin_node
				origin_node_instance.set_name(temp1)
			else: # set nodename
				GlobalVars.ldb2_text = origin_node
		elif origin_node == "Drop_Box_L1" and GlobalVars.ldb1_text != null and GlobalVars.ldb2_text != null:
			var temp = GlobalVars.ldb2_text
			GlobalVars.ldb2_text = GlobalVars.ldb1_text
			GlobalVars.ldb1_text = temp
		elif origin_node == "Drop_Box_L3" and GlobalVars.ldb2_text != null and GlobalVars.ldb3_text != null:
			var temp = GlobalVars.ldb2_text
			GlobalVars.ldb2_text = GlobalVars.ldb3_text
			GlobalVars.ldb3_text = temp
	elif target_node == "Drop_Box_L3":
		if l_subStr in origin_node and origin_node != null:
			# check if we swapped nodes
			if GlobalVars.ldb3_text != null:
				var temp2 = GlobalVars.ldb3_text
				GlobalVars.ldb3_text = origin_node
				origin_node_instance.set_name(temp2)
			else: # set nodename
				GlobalVars.ldb3_text = origin_node
		elif origin_node == "Drop_Box_L1" and GlobalVars.ldb1_text != null and GlobalVars.ldb3_text != null:
			var temp = GlobalVars.ldb3_text
			GlobalVars.ldb3_text = GlobalVars.ldb1_text
			GlobalVars.ldb1_text = temp
		elif origin_node == "Drop_Box_L2" and GlobalVars.ldb2_text != null and GlobalVars.ldb3_text != null:
			var temp = GlobalVars.ldb3_text
			GlobalVars.ldb3_text = GlobalVars.ldb2_text
			GlobalVars.ldb2_text = temp
	#right side
	elif target_node == "Drop_Box_R1":
		if r_subStr in origin_node and origin_node != null:
			# check if we swapped nodes
			if GlobalVars.rdb1_text != null:
				var temp = GlobalVars.rdb1_text
				GlobalVars.rdb1_text = origin_node
				origin_node_instance.set_name(temp)
			else: # set nodename
				GlobalVars.rdb1_text = origin_node
		# swap node names based on origin of drag event
		elif origin_node == "Drop_Box_R2" and GlobalVars.rdb1_text != null and GlobalVars.rdb2_text != null:
			var temp = GlobalVars.rdb1_text
			GlobalVars.rdb1_text = GlobalVars.rdb2_text
			GlobalVars.rdb2_text = temp
		elif origin_node == "Drop_Box_R3" and GlobalVars.rdb1_text != null and GlobalVars.rdb3_text != null:
			var temp = GlobalVars.rdb1_text
			GlobalVars.rdb1_text = GlobalVars.rdb3_text
			GlobalVars.rdb3_text = temp
	elif target_node == "Drop_Box_R2":
		if r_subStr in origin_node and origin_node != null:
			if GlobalVars.rdb2_text != null:
				var temp = GlobalVars.rdb2_text
				GlobalVars.rdb2_text = origin_node
				origin_node_instance.set_name(temp)
			else: # set nodename
				GlobalVars.rdb2_text = origin_node
		elif origin_node == "Drop_Box_R1" and GlobalVars.rdb1_text != null and GlobalVars.rdb2_text != null:
			var temp = GlobalVars.rdb2_text
			GlobalVars.rdb2_text = GlobalVars.rdb1_text
			GlobalVars.rdb1_text = temp
		elif origin_node == "Drop_Box_R3" and GlobalVars.rdb2_text != null and GlobalVars.rdb3_text != null:
			var temp = GlobalVars.rdb2_text
			GlobalVars.rdb2_text = GlobalVars.rdb3_text
			GlobalVars.rdb3_text = temp
	elif target_node == "Drop_Box_R3":
		if r_subStr in origin_node and origin_node != null:
			if GlobalVars.rdb3_text != null:
				var temp = GlobalVars.rdb3_text
				GlobalVars.rdb3_text = origin_node
				origin_node_instance.set_name(temp)
			else: # set nodename
				GlobalVars.rdb3_text = origin_node
		elif origin_node == "Drop_Box_R1" and GlobalVars.rdb1_text != null and GlobalVars.rdb3_text != null:
			var temp = GlobalVars.rdb3_text
			GlobalVars.rdb3_text = GlobalVars.rdb1_text
			GlobalVars.rdb1_text = temp
		elif origin_node == "Drop_Box_R2" and GlobalVars.rdb2_text != null and GlobalVars.rdb3_text != null:
			var temp = GlobalVars.rdb3_text
			GlobalVars.rdb3_text = GlobalVars.rdb2_text
			GlobalVars.rdb2_text = temp
	
