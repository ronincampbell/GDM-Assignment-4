extends CanvasLayer

signal window_closed

@onready
var window = $TextWindow
@onready
var paper = $paperSound
var open_pitch = 1.0
var close_pitch = 0.7

func show_window(contents : String):
	window.show()
	window.contents = contents
	paper.pitch_scale = open_pitch
	paper.play()
	#await paper.finished
	AudioServer.set_bus_mute(2, true)
	PlayerManager.current_player.exited.connect(hide_window)
	

func hide_window():
	window.hide()
	AudioServer.set_bus_mute(2, false)
	paper.pitch_scale = close_pitch
	PlayerManager.current_player.free_controls()
	if PlayerManager.current_player.exited.is_connected(hide_window):
		PlayerManager.current_player.exited.disconnect(hide_window)
		paper.play()
		window_closed.emit()
