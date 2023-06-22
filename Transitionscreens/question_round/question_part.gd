extends Control

onready var DisplayText = $VBoxContainer/DisplayText
onready var ListItem =$ItemList
onready var RestartButton = $VBoxContainer/ButtonNext/knowledge_next


var items : Array = read_json_file("Transitionscreens/question_round/gfx/Questions.json")
var item : Dictionary
var index_item : int = 0

var correct : float = 0

func _ready():
	refresh_scene()

func refresh_scene():
	if index_item >= items.size():
		show_result()
	else:
		show_question()
		
func show_result():
	ListItem.hide()
	RestartButton.show()
	var score = round(correct / items.size() * 100)
	var greet
	if score >= 60:
		greet = "Congratulation"
	else:
		greet = "Oh no"
	DisplayText.text = "{greet} ! Your Score is {score}".format({"greet": greet, "score": score})

func show_question():
	ListItem.show()
	RestartButton.hide()
	ListItem.clear()
	item = items[index_item]
	DisplayText.text = item.question
	var options = item.options
	for option in options:
		ListItem.add_item(option)

func read_json_file(filename):
	var file = File.new()
	file.open(filename, file.READ)
	var text = file.get_as_text()
	var json_data = parse_json(text)
	file.close()
	print(json_data)
	return json_data


func _on_ItemList_item_selected(index):
	if index == item.correctOptionIndex:
		correct += 1
	index_item += 1
	refresh_scene()

func _on_Button_pressed():
	correct = 0
	index_item = 0
	refresh_scene()
