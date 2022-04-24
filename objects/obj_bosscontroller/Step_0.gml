/// @description Insert description here
// You can write your code in this editor
if(BossHealth <= 0){
	if(instance_exists(obj_bosssegment)){
		obj_bosssegment.state = phases.death;
	}
	at = -1;
}
