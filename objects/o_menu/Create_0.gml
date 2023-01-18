/// @description GUI menu bar setup
///	Author: Giorgia Troiani
///	Last updated: 12 - 11 - 2020

// main menu
menu[0,0] = localize("menu_new-game");
menu[0,1] = localize("menu_language");
menu[0,2] = localize("menu_quit");

// submenu
menu[1,0] = localize("lg_english");
menu[1,1] = localize("lg_spanish");
menu[1,2] = localize("lg_yucunani");
menu[1,3] = localize("lg_purhepecha");
menu[1,4] = localize("lg_bquechua");
menu[1,5] = "Back";


index    = 0;  // menu index position
sub_menu = 0;  // submenu index position