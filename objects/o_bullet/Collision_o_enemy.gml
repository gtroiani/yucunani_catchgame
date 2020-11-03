// with code allows one object to interact with a different one
with (other)  // other returns id of instance we are colliding with (the specific enemy that is hit)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();
