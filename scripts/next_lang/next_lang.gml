/// Adapted by Yawning Dad
/// Author: Giorgia Troiani
/// Last updated: 12 - 11 - 2020
/// Allows users to cycle through available languages without creating an option button in the menu
/// Assumptions: the localization object needs to be initialized before every text to be displayed

function next_lang(){
// shift to the next available locale language
// used in the main menu to change languages

global.lang_idx++;
if ( global.lang_idx >= array_length(global.languages) )
{
	global.lang_idx = 0;
}

global.locale_words = ds_map_find_value(global.locale_map, global.languages[global.lang_idx]);
show_debug_message("Language is now " + global.languages[global.lang_idx]);
}