/// @description Insert description here
// You can write your code in this editor

if(rectangle_in_rectangle((obj_player.x-(obj_player.sprite_width/2)+1),(obj_player.y-(obj_player.sprite_height/2) + 1),(obj_player.x+(obj_player.sprite_width/2) - 1),(obj_player.y+(obj_player.sprite_height/2) - 1)
,(x-(sprite_width/2))+sprite_width/2,(y-(sprite_height/2))+sprite_height/2,(x+(sprite_width/2))+sprite_width/2,(y+(sprite_height/2))+sprite_height/2)){
	
	show_debug_message("Inside block, should now die")	
	show_debug_message(string(x+32))
	show_debug_message(string(obj_player.x-sprite_width/2))
}
