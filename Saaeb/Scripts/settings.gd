extends Control

@onready var option_button = $HBoxContainer/OptionButton as OptionButton

const WINDOW_MODE_ARRAY : Array[String] = [
	"Full-Screen",
	"Window Mode",
	"Borderless Window",
	"Borderless Full-Screen"
]

func _ready():
	option_button.item_selected.connect(on_window_mode_selected)

func on_window_mode_selected(index : int) -> void:
	
