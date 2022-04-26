/// @description Insert description here
// You can write your code in this editor
area += 1;
obj_bosssegment.state = phases.moving;

//Creates shadow
if(instance_exists(obj_player)){
instance_create_layer(obj_player.x, obj_player.y, "ExplosionLayer", obj_incoming)
}

alarm[3] = 60;
