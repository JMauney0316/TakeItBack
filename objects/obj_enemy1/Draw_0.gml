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
}

draw_self()
