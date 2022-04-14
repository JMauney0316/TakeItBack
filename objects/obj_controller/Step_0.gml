/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face2)){
	
	if(!instance_exists(obj_ground2)){
		instance_deactivate_object(obj_ground3)
		instance_activate_object(obj_ground2);
	} else {
		instance_deactivate_object(obj_ground2);
		instance_activate_object(obj_ground3);
	}
	
}
