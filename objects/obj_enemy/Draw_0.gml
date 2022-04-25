/// @description Insert description here
// You can write your code in this editor

if(stop == false){
	sprite_index = spr_crawlermove;	
}

if(stop != false){
	sprite_index = spr_crawleridle;	
}



if(MoveDir == -1){	
	image_xscale = 1;
} else if (MoveDir == 1){
	image_xscale = -1;
}


if(hithurt == true){
	shader_set(sh_enemyflash);
	draw_self();
	shader_reset();
} else {
	draw_self();
}
