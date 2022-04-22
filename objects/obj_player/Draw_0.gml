/// @description Insert description here
// You can write your code in this editor


//Jump animation
if(state == states.airborne){
	sprite_index = spr_scaletest3;	
}


//HClimb animations
if(state == states.hclimbing and vspeed == 0){
	sprite_index = spr_hclimbidle;	
} else if (state == states.hclimbing and vspeed != 0){
	sprite_index = spr_climbing;	
}

//Crouch animations
if(state == states.crouch and shootReady == true){
	sprite_index = spr_crouchidle;	
} else if (state == states.crouch and shootReady == false){
	sprite_index = spr_crouchshoot	
}


//Standing still animations
if(state == states.regular and moving == false){
	sprite_index = spr_scaletest;	
}

if(state == states.regular and moving == false and swordReady = false){
	sprite_index = spr_slashingtop;	
	draw_sprite_ext(spr_standingbottom, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
}

if(state == states.regular and moving == false and shootReady = false){
	if (gamepad_button_check(0, gp_padu)){
		/*
	sprite_index = spr_shootingvert;
    draw_sprite_ext(spr_standingbottom, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
	*/
	sprite_index = spr_standingbottom;
	draw_sprite_ext(spr_shootingvert, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
	} else {
	/*
	sprite_index = spr_shoothorz;
    draw_sprite_ext(spr_standingbottom, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
	*/
	sprite_index = spr_standingbottom;
	draw_sprite_ext(spr_shoothorz, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
	}
}


//Moving animations
if(state == states.regular and moving == true and swordReady = false and shootReady = true){
	sprite_index = spr_runbottom;
	//draw_sprite(spr_slashingtop,image_index,x,y);
	draw_sprite_ext(spr_slashingtop, image_index, x,y+1,obj_player.image_xscale, 1, 0, c_white, 1);
}

if(state == states.regular and moving == true and shootReady = false and swordReady = true){
		if (gamepad_button_check(0, gp_padu)){
			sprite_index = spr_runbottom;
			draw_sprite_ext(spr_shootingvert, image_index, x,y-3,obj_player.image_xscale, 1, 0, c_white, 1);
		} else {
			sprite_index = spr_runbottom;
			draw_sprite_ext(spr_shoothorz, image_index, x,y-3,obj_player.image_xscale, 1, 0, c_white, 1);
		}
}

if(state == states.regular and moving == true and swordReady = true and shootReady = true){
	sprite_index = spr_scaletest2;
	//draw_sprite(spr_slashingtop,image_index,x,y);
}



if(hurt == true){
	shader_set(sh_hurt);	
	draw_self();
	shader_reset();	
} else {
	draw_self();
}



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

