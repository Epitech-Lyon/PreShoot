extends AudioStreamPlayer

onready var lvl_music = get_parent().get_node("Level_music")
onready var lives = get_parent().get_parent().get_node("Dog/Lives")

func _physics_process(delta):
	if self.get_playback_position() > 1 and self.is_playing() == true:
		self.stop()
		if lives.live > 0: lvl_music.stream_paused = false
