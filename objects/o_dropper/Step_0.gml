num = irandom_range(1, 100)

// drop objects
if num<5 {
	x_position = irandom_range(60, 720)
	y_position = 100
	
	abc = instance_create_layer(x_position, y_position, "enemy", o_apple)
	abc.speed = 8
	abc.direction = 270
}