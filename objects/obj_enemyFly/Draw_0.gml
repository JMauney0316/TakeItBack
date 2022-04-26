/// @description Insert description here
// You can write your code in this editor


if(hithurt == true){
	shader_set(sh_enemyflash);
	draw_self();
	shader_reset();
} else {
	draw_self();
}
