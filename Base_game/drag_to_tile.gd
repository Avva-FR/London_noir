extends TextureRect

var data = {}
signal node_name_on_drag
var origin_node_name

func _get_drag_data(at_position):
	data["origin_texture"] = texture
	data["origin_node"] = self
	data["origin_name"] = get_name()
	var origin_node_name = get_name()
	var drag_preview = TextureRect.new()
	drag_preview.expand = true
	drag_preview.texture = texture
	drag_preview.size = size
	
	var control = Control.new()
	control.add_child(drag_preview)
	drag_preview.position = -0.5 * drag_preview.size
	set_drag_preview(control)
	
	return data

func get_origin_node_name():
	emit_signal("node_name_on_drag", origin_node_name)
