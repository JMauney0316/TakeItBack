if(distance_to_object(obj_player) < range){
	instance_create_layer(x, y, "Instances", obj_bulletshell)	
}

show_debug_message("Enemy firing")