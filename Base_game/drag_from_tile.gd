extends TextureRect

var data = {}
var start_slot
var target_slot

func _get_drag_data(at_position):
	start_slot = get_name()
	data["origin_node"] = self
	data["origin_slot"] = start_slot
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
	target_slot = get_name()

	var origin_texture = data["origin_texture"]
	data["origin_node"].texture = texture
	texture = origin_texture
