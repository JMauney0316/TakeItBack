/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_rshift) or gamepad_button_check_pressed(0,gp_face2)){
	
	if(!instance_exists(obj_ground2)){
		layer_set_visible("TS_Present", true);
		layer_set_visible("TS_Past", false);
	    layer_set_visible("PresentBackground", true);
		layer_set_visible("Background", false);
		instance_deactivate_object(obj_ground3);
		instance_activate_object(obj_ground2);
	} else {
		layer_set_visible("TS_Present", false);
		layer_set_visible("TS_Past", true);
		layer_set_visible("PresentBackground", false);
		layer_set_visible("Background", true);
		instance_deactivate_object(obj_ground2);
		instance_activate_object(obj_ground3);
	}
	
}
