if global.is_paused{
	exit
}
timer ++
image_index = floor(timer/3) - 1
if timer > 18{
	instance_destroy()
}