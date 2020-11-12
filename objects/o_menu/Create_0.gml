/// @description GUI menu bar setup
///	Author: Giorgia Troiani
///	Last updated: 12 - 11 - 2020

menu_x = x;
menu_y = y;
button_h = 32;

button[0] = localize("menu_new-game");
button[1] = localize("menu_continue");
button[2] = localize("menu_quit");
buttons = array_length(button);

menu_index = 0;
last_selected = 0;