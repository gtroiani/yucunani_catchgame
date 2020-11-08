/// @description energy bar

draw_sprite_stretched(s_energy_bar, 0, 
						energybar_x-8, energybar_y, 
						(energy/energy_max) * energybar_width,
						energybar_height);
draw_sprite(s_energy_border, 0, energybar_x, energybar_y);

var pie = pie_surface_sprite(s_scudo, energy, energy_max);
draw_surface(pie, energybar_x-20, energybar_y + 50);