/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) > AggroRange){
		var Move = 3;

		if(instance_place(x,y+1,obj_ground) and !instance_place(x+(sign(MoveDir) * Move),y,obj_ground)){
			Move *= MoveDir;
			x += Move
			gravity = 0;
		}


		if(instance_place(x+(sign(MoveDir) * Move),y,obj_ground) or !instance_place(x+(sign(MoveDir) * Move),y+1,obj_ground)){
			MoveDir *= -1	
		}
	

	if(instance_place(x,y+1,obj_ground)){
		gravity = 0;
	} else {
		gravity = 0.5;
	}
} else {
	//Something	
}
