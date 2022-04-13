/// @description Insert description here
// You can write your code in this editor

var px1 = (obj_player.x-(obj_player.sprite_width/2)+2)
var py1 = (obj_player.y-(obj_player.sprite_height/2) + 1)
var px2 = (obj_player.x+(obj_player.sprite_width/2) - 1)
var py2 = (obj_player.y+(obj_player.sprite_height/2) - 1)
var x1 = (x-(sprite_width/2))+sprite_width/2
var y1 = (y-(sprite_height/2))+sprite_height/2
var x2 = (x+(sprite_width/2))+((sprite_width/2)) - 2
var y2 = (y+(sprite_height/2))+sprite_height/2

/*
if(rectangle_in_rectangle((obj_player.x-(obj_player.sprite_width/2)+1),(obj_player.y-(obj_player.sprite_height/2) + 1),(obj_player.x+(obj_player.sprite_width/2) - 1),(obj_player.y+(obj_player.sprite_height/2) - 1)
,(x-(sprite_width/2))+sprite_width/2,(y-(sprite_height/2))+sprite_height/2,(x+(sprite_width/2))+((sprite_width/2)),(y+(sprite_height/2))+sprite_height/2)){
	obj_player.PlayHealth = 0;
	
	show_debug_message("Inside block, should now die")	
	show_debug_message(string(x+32))
	show_debug_message(string(obj_player.x-sprite_width/2))
}
*/

if(rectangle_in_rectangle(px1,py1,px2,py2, x1, y1, x2, y2)){
	obj_player.PlayHealth = 0;
	
	show_debug_message("Inside block, should now die")	
	show_debug_message(string(x+32))
	show_debug_message(string(obj_player.x-sprite_width/2))
}
