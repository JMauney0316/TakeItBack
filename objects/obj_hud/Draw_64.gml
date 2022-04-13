/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i<obj_player.PlayHealth; i++){
	draw_sprite(spr_lives, 0, (15+30*i), 10)
}

draw_healthbar(10, 25, 80, 35, obj_player.stamina, c_black, c_red, c_lime, 0, true, true);

draw_text(90,20,string(obj_player.weapon))