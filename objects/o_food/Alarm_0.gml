/// @description destroy food item

food_name = instance_create_layer(x, y, "food", o_word);

switch (sprite_index)
	{
		case s_apple	: food_name.text =	localize("food_apple");		break;
		case s_bean		: food_name.text =	localize("food_bean");		break;
		case s_caldo	: food_name.text =	localize("food_caldo");		break;
		case s_chili	: food_name.text =	localize("food_chili");		break;
		case s_corncob	: food_name.text =	localize("food_corncob");	break;
		case s_fries	: food_name.text =	localize("junk_fries");		break;
		case s_pear		: food_name.text =	localize("food_pear");		break;
		case s_soda		: food_name.text =	localize("junk_soda");		break;
		case s_tomato	: food_name.text =	localize("food_tomato");	break;
		case s_tortillas: food_name.text =	localize("food_tortillas"); break;
		case s_yam		: food_name.text =	localize("food_yam");		break;
		default			: food_name.text =	localize("food_default");
	}

instance_destroy();