/// @description destroy food item

food_name = instance_create_layer(x, y, "food", o_word);

switch (sprite_index)
	{
		case s_apple	: food_name.text =	"apple";	break;
		case s_bean		: food_name.text =	"bean";		break;
		case s_caldo	: food_name.text =	"caldo";	break;
		case s_chili	: food_name.text =	"chili";	break;
		case s_corncob	: food_name.text =	"corncob";	break;
		case s_fries	: food_name.text =	"fries";	break;
		case s_pear		: food_name.text =	"pear";		break;
		case s_tomato	: food_name.text =	"tomato";	break;
		case s_tortillas: food_name.text =	"tortillas";break;
		case s_yam		: food_name.text =	"yam";		break;
		default			: food_name.text =	"fruit";
	}

instance_destroy();