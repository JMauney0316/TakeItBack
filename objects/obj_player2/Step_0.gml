/// @description Insert description here
// You can write your code in this editor



//General Regular and Airborne Movement
if state == states2.regular or state == states2.airborne {
	
	
	GPLeft = gamepad_button_check(0,gp_padl);
	GPRight = gamepad_button_check(0,gp_padr);

	MoveDir = GPRight - GPLeft;


	if(MoveDir != 0){
		lastDir = MoveDir
		image_xscale = MoveDir;
	}

	Move = MoveDir * MoveSpeed; 
	
}


//Horiz Collision
if(instance_place(x+(Move),y,obj_ground)){
		while(!instance_place(x+sign(Move),y,obj_ground)){
				x += (sign(Move))
		}
		Move = 0
}
	
x += Move

//Vertical Collision

vsp += grv;

if(instance_place(x,y+vsp,obj_ground) and state != states2.crouch){
	while(!instance_place(x,y+sign(vsp),obj_ground)){
		y += sign(vsp)
	}
	vsp = 0;
}

y += vsp;


//Jumping
if(instance_place(x,y+1,obj_ground) and gamepad_button_check(0,gp_face1)){
	vsp = -20;	
}



//Crouch
if gamepad_button_check_pressed(0,gp_padd) and state != states2.airborne and state != states2.hclimbing {
		sprite_index = spr_crouch;
		y += 15
		state = states2.crouch;
		show_debug_message("Crouching");
} 

if gamepad_button_check_released(0,gp_padd) and state != states2.hclimbing{
	if(state == states2.crouch){
		sprite_index = spr_player;
		state = states2.regular;
		y -= 15
		show_debug_message("Uncrouching");
	}
	
}




