num = irandom_range(1, 100)

// drop objects
if num<5 {
	x_position = irandom_range(60, 1150)
	y_position = 40
	
	random_index = irandom_range(1,5)
	if random_index >= 1 and random_index <= 4
		food_item = o_apple
	else if random_index = 5
		food_item = o_bean
	
	abc = instance_create_layer(x_position, y_position, "fruit", food_item)
	abc.speed = 3
	abc.direction = 270
}