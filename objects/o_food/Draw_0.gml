/// @description change food to white when colliding
// You can write your code in this editor

draw_self();

if (flash > 0)
{
	flash --;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}