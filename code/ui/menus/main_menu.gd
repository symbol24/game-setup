class_name MainMenu extends RidControl


@export var btn_pressed_audio:AudioFile

@onready var btn_play: Button = %btn_play
@onready var btn_settings: Button = %btn_settings
@onready var btn_how_to: Button = %btn_how_to
@onready var btn_credits: Button = %btn_credits
@onready var btn_quit: Button = %btn_quit


func _ready() -> void:
	btn_play.pressed.connect(_btn_play_pressed)
	btn_settings.pressed.connect(_btn_settings_pressed)
	btn_how_to.pressed.connect(_btn_howto_pressed)
	btn_credits.pressed.connect(_btn_credits_pressed)
	btn_quit.pressed.connect(_btn_quit_pressed)


func _btn_play_pressed() -> void:
	Signals.play_audio.emit(btn_pressed_audio)


func _btn_settings_pressed() -> void:
	Signals.play_audio.emit(btn_pressed_audio)


func _btn_howto_pressed() -> void:
	Signals.play_audio.emit(btn_pressed_audio)
	Signals.toggle_display.emit(&"how_to", true)
	Signals.toggle_display.emit(id, false)


func _btn_credits_pressed() -> void:
	Signals.play_audio.emit(btn_pressed_audio)
	Signals.toggle_display.emit(&"credits", true)
	Signals.toggle_display.emit(id, false)


func _btn_quit_pressed() -> void:
	Signals.play_audio.emit(btn_pressed_audio)
