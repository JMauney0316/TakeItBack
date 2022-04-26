/// @description Insert description here
// You can write your code in this editor

if(obj_bosscontroller.at == 0){
	if(tag == true){
		locy = 423 - (spacing * 50);
		locx = obj_bosscontroller.x;
		tag = false;
	}
	
	//Slithers down
	if(state == phases.creation){
		if(point_distance(x,y,locx, locy) > 10){
			move_towards_point(locx, locy, 5);
		} else {
			speed = 0;	
			state = phases.moving
			obj_bosscontroller.alarm[1] = 100;
		}		
	}
	
	//Idle movement
	if(state == phases.moving){
		wav += 0.05
		x += sin((wav*pi)) * rang;
	}
	
	if(spacing != 1){
		image_angle = 0;	
	}
	
	//Shooting 1
	if(state == phases.attack){
		wav += 0.05
		x += sin((wav*pi)) * rang;
		
		if(spacing == 1){
			direction = (point_direction(x,y,obj_player.x, obj_player.y));
			timeline_index = tl_boss;
			timeline_running = true;
		}
	}
	
	//Slam
	if(state == phases.slam){
		
		
		if(tag2 == true){
			var path2 = path_add();
		
			var midx = (obj_player.x+x)/2
			var midy = (obj_player.y+y)/2
		    endpointx = obj_player.x
		    endpointy = obj_player.y
			
			//X,Y of path
			path_add_point(path2, x,y, 100)
			path_add_point(path2, midx, midy, 100)
			path_add_point(path2,  endpointx,  endpointy, 100)
			
			path_start(path2, 10, path_action_reverse,0);
			tag2 = false;
		}
		speed = 5
		image_angle = 0;
		
		if(point_distance(x,y,endpointx, endpointy) < 5){
			path_endaction = path_action_stop
		}
		show_debug_message(string(state));
		
		
		if(path_position == 1){
			alarm[0] = 100;
			if(spacing ==1){
				image_angle = 90;	
			}
			rang = 2;
			state = phases.moving
			//alarm[0] = 100;
			speed = 0;
		}
		
		
	}	
	
	//Retreating
	if(state == phases.retreat){
		if(point_distance(x,y,inix, iniy) > 10){
			move_towards_point(inix, iniy, 5);
		} else {
			speed = 0;	
			if(spacing == 1){
				if(object_exists(obj_bosscontroller)){
					obj_bosscontroller.at = 1;
					obj_bosscontroller.alarm[4] = 30;
				}
			}
			//show_debug_message(string(state));
			//show_debug_message(string(obj_bosscontroller.at));
			instance_destroy();
		}		
	}
	
//Rams to the left or right	
} else if (obj_bosscontroller.at == 1){
	if(point_distance(x,y,0,650) > 10){
		move_towards_point(0,650,10);	
	} else {
		speed = 0;
		if(spacing == 5){
			speed = 0;	
			show_debug_message("Hit early")
			if(object_exists(obj_bosscontroller)){
				obj_bosscontroller.at = 3;
				obj_bosscontroller.alarm[0] = 40;
			}
			instance_create_layer(768,680,"ExplosionLayer", obj_incomingFixed);
			resetCond = true;
			instance_destroy();
		}
		instance_destroy();
	}
	
	
//Burrow Attack
} else if (obj_bosscontroller.at == 3){
	state = phases.burrow;
	
	if(tag == true){
		var path = path_add();
		path_assign(path, path_burrow)
		path_start(path, 10, path_action_stop,0)
		//show_debug_message(string(state));
		tag = false;
	}
	
	/*
	if(spacing == 1){
		direction = point_direction(x,y,obj_player.x,obj_player.y)			
	}
	*/
	if(point_distance(x,y,64,320) < 10){
		path_end();
		if(object_exists(obj_bosscontroller)){
			obj_bosscontroller.at = 0;
			obj_bosscontroller.alarm[0] = 40;
		}
		resetCond = true;
		instance_destroy();
	} 
	
}

if(state == phases.death){
	speed = 0;
	if(alarm[1] == -1){
		event_user(0);	
		alarm[1] = 100;
	}
}


//Extra contingency for clearing segments
if(resetCond == true){
	instance_destroy(obj_bosssegment);	
}

//Shader flashes

if(hithurt == true and alarm[2] == -1){
	alarm[2] = 5;	
}
