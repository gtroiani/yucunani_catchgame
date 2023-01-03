/// @description Insert description here
// You can write your code in this editor

var i = 0;
repeat buttons
{
	draw_set_font(f_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_gray);
	if (menu_index == i) draw_set_color(c_white);
	
	draw_text(menu_x, menu_y + (button_h * i), button[i]);
	i++;
}

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(x, 50, localize("game_title"));


//draw_set_color(c_white);
//draw_set_halign(fa_center);
//draw_text(x, 150, "Jeremias Salazar & Giorgia Troiani");