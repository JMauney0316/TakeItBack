/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i<obj_player.maxPlayHealth; i++){
	draw_sprite(spr_maxLives, 0, (15+30*i), 10)
}

for(var i = 0; i<obj_player.PlayHealth; i++){
	draw_sprite(spr_lives, 0, (15+30*i), 10)
}

draw_healthbar(10, 25, 80, 35, obj_player.stamina, c_black, c_red, c_lime, 0, true, true);

if(obj_player.weapon == weapons.ranged){
	draw_text(90,20,"Plasma Shots")
} else if(obj_player.weapon == weapons.sword){
	draw_text(90,20,"Sword")
}


if(global.winyet == true){
	draw_text((view_wport[0]/2)-40,(view_hport[0]/2)-60, "Well done");
}

if(global.loseyet == true){
	draw_text((view_wport[0]/2)-40,(view_hport[0]/2)-60, "You've lost");
}
