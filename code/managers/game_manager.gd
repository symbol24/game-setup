class_name GameManager extends Node


const WINDOW_SIZES:Array[Vector2i] = [
	Vector2i(3840, 2160), 
	Vector2i(2560, 1440), 
	Vector2i(1920, 1080), 
	Vector2i(1366, 768), 
	Vector2i(1280, 720), 
	Vector2i(1920, 1200), 
	Vector2i(1680, 1050), 
	Vector2i(1440, 900), 
	Vector2i(1280, 800), 
	Vector2i(1024, 768), 
	Vector2i(800, 600), 
	Vector2i(640, 480), 
	]


enum Window_Mode {
	FULLSCREEN = 0,
	WINDOWED = 1,
	BORDERLESS_WINDOWED = 2,
}


var _data:DataManager = null:
	get:
		if _data == null: _data = get_tree().get_first_node_in_group(&"data_manager")
		return _data


func _init() -> void:
	add_to_group(&"game_manager")
	name = &"game_manager"
	process_mode = PROCESS_MODE_ALWAYS


func _set_display_mode(_mode:Window_Mode) -> void:
	match _mode:
		Window_Mode.BORDERLESS_WINDOWED:
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			get_window().set_size(_data.loaded_save_file.resolution)
		Window_Mode.WINDOWED:
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			get_window().set_size(_data.loaded_save_file.resolution)
		_:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
