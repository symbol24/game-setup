extends Node


# UI
signal toggle_display(id:StringName, display:bool)
signal display_save_icon

# Scene Manager
signal load_scene(id:StringName, display_loading:bool, extra_time:bool)
signal scene_manager_load_complete

# Game Manager
signal toggle_pause(value:bool)
signal update_window_mode(mode:GameManager.Window_Mode)
signal update_resolution(resolution:Vector2i)

# Audio Manager
signal volumes_updated()
signal update_bus_volume(bus:StringName, value:float)
signal play_audio(audio_file:AudioFile)
signal audio_finished(audio_stream_player:RidAudioStreamPlayer)

# Data Manager
signal save
signal load
signal save_result(code:int)
signal load_result(code:int)
