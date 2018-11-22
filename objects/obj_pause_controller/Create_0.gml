enum PauseType {
	NORMAL,
	MESSAGE
}

globalvar game_paused;
globalvar pause_type;
game_paused = false;
pause_type = PauseType.NORMAL;