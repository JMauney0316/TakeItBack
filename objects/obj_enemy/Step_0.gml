/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y+1,obj_ground) and !instance_place(x+(sign(MoveDir) * hspeed),y,obj_wall)){
	hspeed = 3 * MoveDir	
	gravity = 0;
}


if(instance_place(x+(sign(hspeed) * hspeed),y,obj_wall)){
	MoveDir *= -1	
}
	