/// @description Insert description here
// You can write your code in this editor
/*
if(obj_ground2.group1 != true){
	obj_ground.group1 = true;
} else {
	obj_ground.group1 = false;	
}

*/

if(!instance_exists(obj_ground2)){
instance_activate_object(obj_ground2);
} else {
	instance_deactivate_object(obj_ground2);
}