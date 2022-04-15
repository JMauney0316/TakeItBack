/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < TurretRange){	
	timeline_index = tl_enemy3;
	timeline_running = true;
} else {
	timeline_running = false;	
}
