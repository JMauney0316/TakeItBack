/// @description Insert description here
// You can write your code in this editor
hspeed = obj_player.BulH;
vspeed = obj_player.BulV;

hspeed *= obj_player.lastDir;

basedamage = 1;

instance_create_layer(x,y,"Instances",obj_FBCreation)
