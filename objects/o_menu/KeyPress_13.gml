/// @description Insert description here
// You can write your code in this editor

switch (menu_index) {
	
	case 0:
		room_goto(rm_story_cut);
		break;
		
	case 1:
		room_goto(rm_customize);
		break;
		
	case 2:
		game_end();
		break
}