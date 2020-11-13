/// @description Load locale data
/// Localization will be used to ensure that characters of Sa'an Savi get correctly displayed
/// In the future we could add other indigenous varieties by populating other JSON dictionaries
/// Base code has been developed by user Yawning Dad
/// Author: Giorgia Troiani
/// Last updated: 12 - 11 - 2020


global.languages		= [];
global.lang_idx			= 0;
global.locale_map		= ds_map_create(); // GMS version of JSON dictionary
global.locale_words		= 0;

var default_locale_code	= "mx"; // could be set to Spanish or Sa'an Savi if we prefer
var default_locale_idx	= 0;


// check that a JSON dictionary with the language glossary exists
var locale_file_name = file_find_first("locale_*.json", 0);
if (locale_file_name == "")     // if the file name is an empty string, discard
{
	show_error("No locale files found!", true);
	return;
}
while (locale_file_name != "")  // load all dictionaries that are titled
{
	show_debug_message("Loading locale file: " + locale_file_name);

	// open the locale file for reading and returns an error if anything goes wrong
	var locale_file	= file_text_open_read(locale_file_name);
	if (locale_file == -1)
	{
		show_error("LOCALE WARNING: Error reading locale file " + locale_file_name, true);
		return;
	}

	// build the JSON text
	var json_str	= "";
	var j = 0;
	while (!file_text_eof(locale_file))   // until the file reached the end, update each line in a string
	{
		json_str += file_text_read_string(locale_file);
		file_text_readln(locale_file);
		j++;
	}
	file_text_close(locale_file);
	show_debug_message("Loaded locale_map from " + string(j) + " lines of text.");

	// convert the JSON to a usable ds_map
	var locale_map = json_decode(json_str);
	
	if (locale_map == -1 || !ds_map_exists( locale_map, "locale_code")) // discard any error
	{
		show_error( "LOCALE WARNING: Invalid locale data inside: " + locale_file_name, true );
		return;
	}
	
	// get the locale code from the content of the JSON (turned to map)
	// convention for this project: locale code is first element in dictionary
	var locale_code = locale_map[? "locale_code"];
	ds_map_add(global.locale_map, locale_code, locale_map);

	// if this is the default locale, set the default locale index
	if (locale_code == default_locale_code)
		default_locale_idx = global.lang_idx;

	// add this locale's code to the list of available locales
	global.languages[global.lang_idx] = locale_code;
	global.lang_idx++;	

	locale_file_name = file_find_next();	
}
file_find_close();

// set the default locale to the language of choice
if (ds_map_exists(global.locale_map, default_locale_code)) {
	show_debug_message("Setting locale to default language.");
	global.locale_words = global.locale_map[? default_locale_code];
	global.lang_idx = default_locale_idx;

// if default language failes, use the first language on the stack
} else {
	show_debug_message("Setting locale to fallback language.");
	global.lang_idx = 0;
	global.locale_words = global.locale_map[? global.languages[0]];
}

show_debug_message("Locale set to " + global.languages[global.lang_idx]);