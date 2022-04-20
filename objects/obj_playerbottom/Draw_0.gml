/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

/*
if(state == states.regular and moving == false){
	sprite_index = spr_scaletest;	
}

if(state == states.regular and moving == true){
	sprite_index = spr_scaletest2;	
}


if(state == states.airborne){
	sprite_index = spr_scaletest3;	
}
*/


draw_self();
//draw_set_color(c_black)
/*
var px1 = (obj_player.x-(obj_player.sprite_width/2)+2)
var py1 = (obj_player.y-(obj_player.sprite_height/2) + 1)
var px2 = (obj_player.x+(obj_player.sprite_width/2) - 1)
var py2 = (obj_player.y+(obj_player.sprite_height/2) - 1)
*/
var px1 = (bbox_left+2)
var py1 = (bbox_top + 1)
var px2 = (bbox_right- 1)
var py2 = (bbox_bottom - 1)

//draw_rectangle(px1,py1,px2,py2,false);
