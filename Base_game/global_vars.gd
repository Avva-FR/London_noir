extends Node

# holds name of node on _on_drop event of texture that was originally dragged
var init_ldb1
var init_ldb2
var init_ldb3
var init_rdb1
var init_rdb2
var init_rdb3
# holds current node name which correspoding texture is currently stored in one of the dropboxes
var ldb1_text: String
var ldb2_text: String
var ldb3_text: String
var rdb1_text: String
var rdb2_text: String
var rdb3_text: String

# set this to the current plotpoint
var cur_l_plotpoint: String
var cur_r_plotpoint: String
# check which plotpoints are solved
var l_pp1_solved = false
var l_pp2_solved = false
var l_pp3_solved = false
var l_pp4_solved = false

var r_pp1_solved = false
var r_pp2_solved = false
var r_pp3_solved = false
var r_pp4_solved = false
# increments when tip button is clicked
var l_tip_count
var r_tip_count


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
