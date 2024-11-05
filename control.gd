extends Control

var random_number = 0
var max_number = 100
var min_number = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "Guess the number between 1 and 100!!!"
	
	random_number = randi() % max_number + min_number
	
	print(random_number)
	
	$Button.connect("pressed", self._on_button_pressed)
	pass # Replace with function body.
	
func _on_button_pressed():
	var guess = int($VBoxContainer/LineEdit.text)

	if guess == random_number:
		$VBoxContainer/Label2.text = "Correct!!! you guessed the right number!!"
	elif guess > random_number:
		$VBoxContainer/Label2.text = "[ " + str(guess) + " ] - Too high; try again!"
	else:
		$VBoxContainer/Label2.text = "[ " + str(guess) + " ] - Too low; try again!"
	$VBoxContainer/LineEdit.text = ""
