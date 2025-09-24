if can_destroy{
	image_index = 14
	timer--
	image_alpha = timer / 10
	if timer < 0 {
		instance_destroy()
	}
}