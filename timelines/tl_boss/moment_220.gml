//Bullet 3

var bul = instance_create_layer(x,y,"Instances", obj_bossbullet)

with (bul)
bul.direction = other.direction
bul.speed = 10;
