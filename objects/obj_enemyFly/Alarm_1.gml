/// @description Insert description here
// You can write your code in this editor

var vbul = instance_create_layer(x,y+10,"Instances", obj_bossbullet);
with (vbul)
vbul.direction = 90
vbul.speed = 10;


var bbul = instance_create_layer(x,y-10,"Instances", obj_bossbullet);
with (bbul)
bbul.direction = 270
bbul.speed = 10;
