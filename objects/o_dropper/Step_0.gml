num = irandom_range(1, 100)

// drop objects
if num<3 {
	x_position = irandom_range(60, 1150)
	y_position = 40
	
	random_index = irandom_range(1,100)
	if random_index <= 10
		food_item = o_apple
	else if random_index <= 20
		food_item = o_bean
	else if random_index <= 30
		food_item = o_caldo
	else if random_index <= 40
		food_item = o_chili
	else if random_index <= 50
		food_item = o_corncob
	else if random_index <= 60
		food_item = o_fries
	else if random_index <= 70
		food_item = o_pear
	else if random_index <= 80
		food_item = o_tomato
	else if random_index <= 90
		food_item = o_tortillas
	else if random_index <= 100
		food_item = o_yam
	
	
	abc = instance_create_layer(x_position, y_position, "fruit", food_item)
	abc.speed = 3
	abc.direction = 270
}