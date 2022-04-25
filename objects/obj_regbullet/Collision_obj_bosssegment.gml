/// @description Insert description here
// You can write your code in this editor

if(other.spacing == 1){	
	obj_bosscontroller.BossHealth -= basedamage;
	obj_bosssegment.hithurt = true;
}
audio_play_sound(bullHit, 5, false);
instance_destroy();
