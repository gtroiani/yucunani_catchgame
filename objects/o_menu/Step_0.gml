/// @ description Menu functioning
// turotial by Slyddar on YT

var _up     = keyboard_check_pressed(vk_up);
var _down   = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_enter);

var _move = _down - _up;
if _move != 0 {
	// move the index
	index += _move;
	
	var _size = array_length_2d(menu, sub_menu);
	if index < 0 index = _size - 1;
	else if index >= _size index = 0;
}

if _select {
	switch(sub_menu) {
		case 0: // main menu
			switch(index){
				case 0: // start game
					room_goto(rm_story_cut);
				break;
				
				case 1: // language
					sub_menu = 1;
					index = 0;
				break;
				
				case 2: // quit
					game_end();
				break;
				
				case 3: // credits
					room_goto(rm_credits);
				break;
			}
			
		case 1: // language submenu
			switch(index){
				case 0: // English
					
				break;
				
				case 1: // Spanish
					
				break;
				
				case 2: // quit
					
				break;
				
				case 3: // quit
				
				break;
				
				case 4: // quit
				
				break;
				
				case 5: // Back
					sub_menu = 0;
					index = 1;
				break;
			}
		 
	}
}