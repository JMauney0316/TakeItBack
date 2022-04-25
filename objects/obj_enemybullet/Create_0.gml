/// @description Insert description here
// You can write your code in this editor
/*
if(x > obj_player.x){
	hspeed = -5;
} else {
	hspeed = 5;	
}
*/

audio_play_sound(enemBullet, 5, false);

instance_create_layer(x,y,"Instances",obj_bulFlash);
