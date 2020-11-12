/// Adapted by Yawning Dad
/// Author: Giorgia Troiani
/// Last updated: 12 - 11 - 2020
/// Substitute each key with the corresponding value (translation in another variety). Font for menu
/// has been expanded in range to cover all ASCII characters, in this way it should correctly display
/// Sa'an Savi words.
/// Assumptions: the localization object needs to be initialized before every text to be displayed

function localize(variable_name){

var key = argument0;
if (ds_map_exists( global.locale_words, key))
{
	return ds_map_find_value(global.locale_words, key);
} else {
	return "??MISSING TRANSLATION??";
}

}