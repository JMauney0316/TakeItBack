/// @description Insert description here
// You can write your code in this editor

//Collision for vertical and horizontal while checks were loosely inspired by Shaun Spalding's seen at
//  https://www.youtube.com/watch?v=izNXbMdu348

GPLeft = keyboard_check(vk_left) or gamepad_button_check(0, gp_padl);
GPRight = keyboard_check(vk_right) or gamepad_button_check(0, gp_padr);

MoveDir = GPRight - GPLeft;


if(MoveDir != 0 and state != states.dead){
	lastDir = MoveDir
	image_xscale = MoveDir;
}

var Move = MoveDir * MoveSpeed; 

if(Move != 0){
	moving = true;	
} else {
	moving = false;	
}



//General Regular and Airborne Movement
if (state == states.regular or state == states.airborne) and state != states.slash {
	
	
	if(instance_place(x+(Move),y,obj_ground)){
		while(!instance_place(x+sign(Move),y,obj_ground)){
				x += (sign(Move))
		}
		Move = 0
	}	
	x += Move
}


//Crouch
if (keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd)) and state != states.airborne and state != states.hclimbing and state != states.slash and state != states.dead {
		//sprite_index = spr_crouch;
		//y += 16
		if(state != states.airborne){
			state = states.crouch;
		}
		show_debug_message("Crouching");
} 

if (keyboard_check_released(vk_down) or gamepad_button_check_released(0, gp_padd)) and state != states.hclimbing and state != states.slash{
	if(state == states.crouch){
		//sprite_index = spr_scaletest;
		state = states.regular;
		//y -= 16
		show_debug_message("Uncrouching");
	}
	
}




//Handles Jumping
if (keyboard_check(vk_space) or gamepad_button_check(0,gp_face1)) and instance_place(x,y+1,obj_ground) and state != states.airborne and !gamepad_button_check(0,gp_padd) {
	show_debug_message(string(state))	
	if(state == states.crouch){
		y -= 15
		sprite_index = spr_player;
	}
	
	audio_play_sound(jump, 5, false);
	
	vspeed = -JumpHeight
	
	state = states.airborne
	show_debug_message("Going airborne");
	
}


if(instance_place(x,y+vspeed,obj_ground)){
	while(!instance_place(x,y+sign(vspeed),obj_ground)){
		y += 1	
	}
	vspeed = 0;
}



//y = floor(y);

//Grvity 2.0
if instance_place(x,y+1,obj_ground){
	gravity = 0;
	if state != states.crouch and state != states.hclimbing and state != states.dead{
		state = states.regular;
	}
	//vsp = 0;
} else {
	if state != states.crouch and state != states.hclimbing and state != states.dead{
		gravity = 0.5;
		state = states.airborne;
	}
}


//Climbing
if (instance_place(x+MoveSpeed,y,obj_wall) or instance_place(x-MoveSpeed,y,obj_wall)) and state == states.airborne{
	state = states.hclimbing;
	show_debug_message("Climb")
}


if state == states.hclimbing {
	gravity = 0;
	vspeed = 0;
	if(instance_place(x,y+1,obj_ground)){
		state = states.regular
	}
	
	if(!instance_place(x+lastDir,y,obj_wall)){
		state = states.airborne;
		vspeed = -(JumpHeight); 
	}
	
	if (gamepad_button_check(0,gp_padu) or keyboard_check(vk_up)){
		vspeed = -3;	
	}
	
	if (gamepad_button_check(0,gp_padd) or keyboard_check(vk_down)) and (!instance_place(x,y+1,obj_ground)){
		vspeed = 3;	
	}
	
	
	if (gamepad_button_check_pressed(0,gp_face1) or keyboard_check(vk_space)) and (((gamepad_button_check(0,gp_padl) or keyboard_check(vk_left)) or (gamepad_button_check(0,gp_padr) or keyboard_check(vk_right)))){
		show_debug_message("Leaving Wall")
		x += (MoveSpeed * MoveDir);
	    state = states.airborne;
	}
	
}


//Sword Slash (Incomplete)
if((keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face3)) and swordReady == true and state != states.hclimbing and state != states.crouch and weapon == weapons.sword and state != states.dead){
	lastState = state;
	state = states.slash
	instance_create_layer(x+(image_xscale * sprite_xoffset),y,"Instances",obj_slash)
	swordReady = false;
	alarm[2] = 10;
}



//Shooting (Mostly Complete)
if((keyboard_check(vk_enter) or gamepad_button_check(0,gp_face3)) and shootReady == true and (state != states.hclimbing) and state != states.dead and weapon == weapons.ranged){
	if(gamepad_button_check(0, gp_padu) or (keyboard_check(vk_up))){
		BulH = 0;
		BulV = -20;
		if(stamina > 10){
			instance_create_layer(x,y-(sprite_yoffset),"Instances",obj_regbullet)
			stamina -= 10;
		}
	
		//show_debug_message("Shooting Up");
	
		shootReady = false;
		alarm[0] = 10;	
	} else if((gamepad_button_check(0, gp_padd) or keyboard_check(vk_down)) and state = states.airborne){
		BulH = 0;
		BulV = 20;
		if(stamina > 10){
			instance_create_layer(x,y+(sprite_yoffset),"Instances",obj_regbullet)
			stamina -= 10;
		}
	
		//show_debug_message("Shooting Down");
	
		shootReady = false;
		alarm[0] = 10;	
	} else {
		BulH = 20;
		BulV = 0;
		if(state == states.crouch){
			if(stamina > 10){
				instance_create_layer(x+(image_xscale * 24),y + 8,"Instances",obj_regbullet)
				stamina -= 10;
			}
			
		} else {
			if(stamina > 10){
				instance_create_layer(x+(image_xscale * 24),y-5,"Instances",obj_regbullet)	
				stamina -= 10;
			}
		}
		
		shootReady = false;
		alarm[0] = 10;
		//show_debug_message("Y: " + string(y));	
		//show_debug_message("X: " + string(x));	
		//show_debug_message(string(obj_bosscontroller.at));		
	}
}


//Handles Swapping Weapons
if gamepad_button_check_pressed(0,gp_shoulderl) or keyboard_check_pressed(ord("E")){
	weapon = weapons.sword;	
}

if gamepad_button_check_pressed(0,gp_shoulderr) or keyboard_check_pressed(ord("R")){
	weapon = weapons.ranged;	
}

//Stamina regen
if(stamina <= 100){
	stamina += 0.5
}


//Health
if(hurt == true and alarm[3] == -1){
	alarm[3] = 30;	
}



/*Death setter*/

if(PlayHealth <= 0 and obj_hud.alarm[1] == -1){
	obj_hud.alarm[1] = 120;	
	global.loseyet = true;
	state = states.dead;
}


clamp(vspeed, 0, 10);



/*Hurt Shader Stuff*//*
if(hurt == true and alarm[3] == -1){
	alarm[3] = 60	
}*/

/*TESTING FUNCTIONS*/

if gamepad_button_check(0,gp_face4){
		//show_debug_message(string(x+sprite_xoffset));	
		show_debug_message(string(Climbmove));	
		//show_debug_message(string(Move));	
}



