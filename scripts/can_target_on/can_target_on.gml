function can_target_on(card_target_type,enemy_target_type){
	if enemy_target_type == "normal"{
		return true
	}
	if enemy_target_type == "diver"{
		if card_target_type == "throw" || card_target_type == "track"{
			return true
		}
	}
	if enemy_target_type == "air"{
		if card_target_type == "air" || card_target_type == "track"{
			return true
		}
	}
	return false
}

function can_hit(bullet_target_type,enemy_target_type){
	return can_target_on(bullet_target_type,enemy_target_type)
}