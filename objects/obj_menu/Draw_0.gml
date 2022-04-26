/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(fnt_menu);

//line spacing
var _gap = 40;

//draw items
for (var i = 0; i < array_length_2d(menu, sub_menu); ++i){
    draw_set_color(c_white);
    if i == index draw_set_color(c_teal);

    draw_text(room_width/2, room_height * .4 + _gap * i, menu[sub_menu, i]);
	
	draw_text(room_width/2,400, "TAKE IT BACK!");
}
