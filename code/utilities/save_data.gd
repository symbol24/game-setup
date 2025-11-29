class_name SaveData extends Resource


@export var id:int = 0
@export var file_name:String = ""
@export var save_time_and_date:float = 0.0

@export var master_volume := 1.0
@export var music_volume := 1.0
@export var sfx_volume := 1.0
var default_master_volume := 1.0
var default_music_volume := 1.0
var default_sfx_volume := 1.0

@export var language := "en"
@export var dyslexic_font := false
var default_language := "en"
var default_dyslexic_font := false

@export var resolution := Vector2i(1920, 1080)
@export var window_mode:GameManager.Window_Mode = GameManager.Window_Mode.FULLSCREEN
var default_resolution := Vector2i(1920, 1080)
var default_windowmod:GameManager.Window_Mode = GameManager.Window_Mode.FULLSCREEN
