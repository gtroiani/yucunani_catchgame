/// @description Insert description here
// You can write your code in this editor

var file;
file = get_open_filename("text file|*.txt", "");
if file != ""
{
    file_text_open_read(file);
	
	var load_file = file_text_readln(file);
	var text2 = load_file;
	
	file_text_close(file);
	
	draw_text(room_width/2, 200, text2);
}