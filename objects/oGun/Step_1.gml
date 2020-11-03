/// this event takes place before every other step event
/// this can be used for the basket

x = o_player.x;
y = o_player.y - 5;  // use the number to move the basket around and look nice with the player sprite

image_angle = point_direction(x, y, mouse_x, mouse_y);  // rotating the basket in the direction where your mouse is pointing

firingdelay = firingdelay -1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x, y, "bullet", o_bullet))   // content of this loop is applied to bullet
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);   // "other" here refers to the object outside the loop (i.e. the gun)
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270) // if we are facing left
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}