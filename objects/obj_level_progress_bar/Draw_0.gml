if obj_battle.level_stage == "boss"{
	exit
}

draw_sprite_ext(spr_level_progress_bg_right,0,x,y,1.8,1.8,0,c_white,1)
draw_sprite_ext(spr_level_progress_bg_middle,0,x,y,130,1.8,0,c_white,1)
draw_sprite_ext(spr_level_progress_bg_left,0,x-260,y,1.8,1.8,0,c_white,1)

draw_sprite_ext(spr_level_wave_text,0,x-340,y-40,1.8,1.8,0,c_white,1)

var level_progress = 0
var current_total_subwaves = array_length(global.level_file.waves[obj_battle.current_wave].subwaves)
if obj_battle.current_wave == total_wave - 1 && obj_battle.current_subwave == current_total_subwaves{
	last_wave = true
	draw_sprite_ext(spr_level_wave_number,total_wave mod 10,x-340,y-40,1.8,1.8,0,c_white,1)
}
else{
	draw_sprite_ext(spr_level_wave_number,obj_battle.current_wave mod 10,x-340,y-40,1.8,1.8,0,c_white,1)
}
if level_stage == "pre"{
	level_progress = obj_battle.current_wave / elite_wave + (obj_battle.current_subwave /current_total_subwaves)/elite_wave
	draw_sprite_ext(spr_level_progress_bar,0,x+3.6,y,130*level_progress+1.8,1.8,0,c_white,1)
	for(var i = 0; i < elite_wave;i++){
		var interval = 260 / elite_wave
		if i <= obj_battle.current_wave - 1{
			draw_sprite_ext(spr_level_progress_flag,0,x-(i+1)*interval,y,1.8,1.8,0,c_white,1)
		}
		else{
			draw_sprite_ext(spr_level_progress_flag,0,x-(i+1)*interval,y+15,1.8,1.8,0,c_white,1)
		}
	}
}
else if level_stage == "elite"{
	level_progress = (obj_battle.current_wave-elite_wave) / (total_wave-elite_wave) + (obj_battle.current_subwave /current_total_subwaves)/(total_wave - elite_wave)
	draw_sprite_ext(spr_level_progress_bar,0,x+3.6,y,130*level_progress+1.8,1.8,0,c_white,1)
	for(var i = 0; i < (total_wave-elite_wave);i++){
		var interval = 260 / (total_wave-elite_wave)
		if i <= obj_battle.current_wave -elite_wave- 1{
			draw_sprite_ext(spr_level_progress_flag,0,x-(i+1)*interval,y,1.8,1.8,0,c_white,1)
		}
		else{
			draw_sprite_ext(spr_level_progress_flag,0,x-(i+1)*interval,y+15,1.8,1.8,0,c_white,1)
		}
	}
}

draw_sprite_ext(spr_level_progress_icon,0,x-260*level_progress,y,1.8,1.8,0,c_white,1)