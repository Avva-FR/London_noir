extends TextureRect

var data = {}
#var current_texture
#signal cur_texture

func _get_drag_data(at_position):
	data["origin_node"] = self
	data["origin_texture"] = texture
	data["origin_name"] = get_name()
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
	# replace _ondragtexture with current one
	data["origin_node"].texture = texture
	#drop texture
	texture = origin_texture
	#current_texture = texture
