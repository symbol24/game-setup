class_name Ui extends CanvasLayer


const UIS := preload("uid://cv5luw2785aq")


var _active_ui:RidControl = null
var _all_uis:Array[RidControl] = []


func _init() -> void:
	add_to_group(&"ui")
	name = &"ui"
	process_mode = Node.PROCESS_MODE_ALWAYS


func _ready() -> void:
	Signals.toggle_display.connect(_toggle_display)


func _toggle_display(id:StringName, display:bool) -> void:
	if id == &"":
		push_error("No id sent to UI.")
		return
	var temp:RidControl = _get_ridcontrol(id)
	if temp == null: 
		push_error(id, " not found in uis.")
		return
	temp.toggle_ridcontrol(id, display)
	if display: 
		if _active_ui != null: temp.previous = _active_ui.id
		_active_ui = temp


func _get_ridcontrol(id:StringName) -> RidControl:
	for each in _all_uis:
		if each.id == id:
			return each

	if id in UIS.list:
		var new:RidControl = load(UIS.list[id]).instantiate()
		add_child.call_deferred(new)
		return new

	return null
