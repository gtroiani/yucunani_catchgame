// Set up direction and speed of movement of junk food falling

x_position = irandom_range(60, 1350);
y_position = 40;
	
abc = instance_create_layer(x_position, y_position, "food", o_junk_food);
abc.speed = 5;  // junk food drops faster than produce to make things more difficult
abc.direction = 270;

alarm[1] = 100;