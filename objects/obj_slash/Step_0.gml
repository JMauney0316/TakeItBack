/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	x = (obj_player.x+obj_player.sprite_xoffset) * obj_player.image_yscale
	y = obj_player.y
}
image_xscale = obj_player.image_xscale