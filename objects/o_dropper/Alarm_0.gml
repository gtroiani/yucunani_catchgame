/// @description produce
// You can write your code in this editor

x_position = irandom_range(60, 1350);
y_position = 40;
	
abc = instance_create_layer(x_position, y_position, "food", o_produce);
abc.speed = 3;
abc.direction = 270;

alarm[0] = 60;