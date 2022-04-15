/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_released(ord("1"))){
	game_restart()	
}

if(keyboard_check_released(ord("2"))){
	obj_player.PlayHealth += 5	
}

if(keyboard_check_released(ord("3"))){
	obj_player.PlayHealth -= 2	
}

if(keyboard_check_released(ord("4"))){
	obj_player.stamina += 400	
}

if(keyboard_check_released(ord("5"))){
	instance_create_layer(obj_player.x + 10, obj_player.y - 30, "Instances", obj_healthPack)	
}

if(keyboard_check_released(ord("6"))){
	instance_create_layer(obj_player.x + 10, obj_player.y - 30, "Instances", obj_hpUp)	
}

if(keyboard_check_released(ord("7"))){
	instance_destroy(obj_enemy)	
}



