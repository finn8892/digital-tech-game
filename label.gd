extends Label

@export var full_text: String = "Hover over me to see the text appear letter by letter."
@export var char_delay: float = 0.01

var current_index: int = 0
var typing: bool = false

func _ready():
	text = ""
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))

func _on_mouse_entered():
	if not typing:
		typing = true
		text = ""
		current_index = 0
		_show_next_letter()

func _on_mouse_exited():
	typing = false
	text = ""  # Clear text when mouse leaves

func _show_next_letter():
	if typing and current_index < full_text.length():
		text += full_text[current_index]
		current_index += 1
		# Wait a moment, then call again
		get_tree().create_timer(char_delay).timeout.connect(_show_next_letter)
