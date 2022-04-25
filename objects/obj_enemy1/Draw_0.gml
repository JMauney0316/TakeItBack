/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player) > AggroRange){
	sprite_index = spr_enemy1Walk;
} else {
	sprite_index = spr_enemy1Shoot;
}


if(stateOfx = false){
	if(MoveDir == 1){	
		image_xscale = 1;
	} else if (MoveDir == -1){
		image_xscale = -1;
	}
} else {
	if(x >= obj_player.x){
		image_xscale = -1
	} else if(x < obj_player.x) {
		image_xscale = 1
	}
}


if(hithurt == true){
	shader_set(sh_enemyflash);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

