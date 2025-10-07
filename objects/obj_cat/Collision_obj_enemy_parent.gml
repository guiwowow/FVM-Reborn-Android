if state == "idle" && row == other.grid_row{
	state = "awake"
}
if state != "idle" && row == other.grid_row && other.hp > 0{
	with other{
		hp -= maxhp
		event_user(0)
	}
}