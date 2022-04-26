/// @description Insert description here
// You can write your code in this editor
other.enemyHealth -= basedamage;
other.hithurt = true;


audio_play_sound(bullHit, 5, false);
instance_destroy();
