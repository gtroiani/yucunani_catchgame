// returns a surface with a circular sector of a sprite
// it works best with square sprites
// value/value_max = fraction to be shown
// grows clockwise starting at noon when value=0.
function pie_surface_sprite(sprite, value, value_max){
	var w = sprite_get_width(sprite);
	var h = sprite_get_height(sprite);
	
	pie = surface_create(w,h)
	surface_set_target(pie)
	draw_sprite(sprite, 0, 0, 0);
	gpu_set_blendmode(bm_subtract);
	draw_pie(w/2,h/2, min(w,h)/2, 0, 360*(1-value/value_max));
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	return(pie);
}