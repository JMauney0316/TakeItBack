/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) > AggroRange){
	timeline_running = false;
		var Move = 3;

		if(instance_place(x,y+1,obj_ground) and !instance_place(x+(sign(MoveDir) * Move),y,obj_ground)){
			Move *= MoveDir;
			x += Move
			gravity = 0;
		}


		if(instance_place(x+(sign(MoveDir) * Move),y,obj_ground) or !instance_place(x+(sign(MoveDir) * Move),y+1,obj_ground)){
			//MoveDir *= -1	
			MoveDir = -1 * sign(MoveDir)
		}
	
} else {	
	timeline_index = tl_enemy2;
	timeline_running = true;
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
	
if(enemy1Health <= 0){
	instance_destroy();
}

//Shaders
if(hithurt == true and alarm[0] == -1){
	alarm[0] = 5;	
}
