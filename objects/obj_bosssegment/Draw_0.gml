/// @description Insert description here
// You can write your code in this editor

if(spacing == 1){
	if(OverRide == false){
		sprite_index = spr_headidle;
	}

	if(state != phases.retreat){
		image_angle = direction;
	} else {
		image_angle = 270;
	}
}

if(obj_bosscontroller.at == 3){
	if(spacing != 1){
	image_angle = direction+90;
	}
}

if(hithurt == true){
	shader_set(sh_enemyflash);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

