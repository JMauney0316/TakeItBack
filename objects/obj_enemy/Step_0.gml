/// @description Insert description here
// You can write your code in this editor

if(stop == false){
    var Move = 3;

	if(instance_place(x,y+1,obj_ground) and !instance_place(x+(sign(MoveDir) * Move),y,obj_ground)){
		Move *= MoveDir;
		x += Move
		gravity = 0;
	}


	if(instance_place(x+(sign(MoveDir) * Move),y,obj_ground)){
		MoveDir = -1 * sign(MoveDir)
		//image_xscale *= 1
	}
}
	
if(instance_place(x,y+vspeed,obj_ground)){
	while(!instance_place(x,y+sign(vspeed),obj_ground)){
		y += 1	
	}
	vspeed = 0;
}
	
	

if(instance_place(x,y+1,obj_ground)){
	gravity = 0;
} else {
	gravity = 0.5;	
}

if(enemyHealth <= 0){
	instance_destroy();
}

//show_debug_message(string(sign(MoveDir)))

if(hithurt == true and alarm[0] == -1){
	alarm[0] = 5;	
}
