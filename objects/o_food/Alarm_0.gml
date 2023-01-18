/// @description destroy food item

food_name = instance_create_layer(x, y, "food", o_word);

switch (sprite_index)
	{
		case s_bean		: food_name.text =	localize("food_bean");		break;
		case s_chicken	: food_name.text =	localize("food_chicken");	break;
		case s_caldo	: food_name.text =	localize("food_caldo");		break;
		case s_chili	: food_name.text =	localize("food_chili");		break;
		case s_corncob	: food_name.text =	localize("food_corncob");	break;
		case s_egg		: food_name.text =	localize("food_egg");		break;
		case s_fish		: food_name.text =	localize("food_fish");		break;
		case s_fries	: food_name.text =	localize("junk_fries");		break;
		case s_green_bean: food_name.text =	localize("food_green-bean");break;
		case s_honey	: food_name.text =	localize("food_honey");		break;
		case s_maize	: food_name.text =	localize("food_maize");		break;
		case s_meat		: food_name.text =	localize("food_meat");		break;
		case s_mushroom	: food_name.text =	localize("food_mushroom");	break;
		case s_pear		: food_name.text =	localize("food_pear");		break;
		case s_potato	: food_name.text =	localize("food_potato");	break;
		case s_pumpkin	: food_name.text =	localize("food_pumpkin");	break;
		case s_soda		: food_name.text =	localize("junk_soda");		break;
		case s_strawberry: food_name.text =	localize("food_strawberry");break;
		case s_tomato	: food_name.text =	localize("food_tomato");	break;
		case s_tortillas: food_name.text =	localize("food_tortillas"); break;
		case s_yam		: food_name.text =	localize("food_yam");		break;
		default			: food_name.text =	localize("food_default");
	}
	
switch (sprite_index)
	{
		case s_bean		: audio_play_sound(snd_beans_mx, 0, 0);		break;
		case s_chili	: audio_play_sound(snd_chile, 0, 0);	break;
		case s_corncob	: audio_play_sound(snd_elote, 0, 0);	break;
		case s_egg		: audio_play_sound(snd_huevo, 0, 0);	break;
		case s_maize	: audio_play_sound(snd_grano, 0, 0);	break;
		case s_meat		: audio_play_sound(snd_meat, 0, 0);		break;
		case s_mushroom	: audio_play_sound(snd_seta, 0, 0);		break;
		case s_potato	: audio_play_sound(snd_papa, 0, 0);		break;
		case s_pumpkin	: audio_play_sound(snd_pumpkin, 0, 0);	break;
		case s_tomato	: audio_play_sound(snd_tomate, 0, 0);	break;
		case s_tortillas: audio_play_sound(snd_tortilla, 0, 0);	break;
	}

instance_destroy();