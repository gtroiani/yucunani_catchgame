/// @description junk food
// You can write your code in this editor

/// @description produce
// You can write your code in this editor

x_position = irandom_range(60, 1350);
y_position = 40;
	
abc = instance_create_layer(x_position, y_position, "food", o_junk_food);
abc.speed = 3;
abc.direction = 270;

alarm[1] = 100;