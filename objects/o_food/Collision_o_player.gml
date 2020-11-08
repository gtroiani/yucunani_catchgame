/// @description Player eats food item

// fai qualcosa qui
if (eaten != true)
{
	// limit score between 0 and the maximum value allowed by the energy bar
	other.energy = clamp(other.energy + value, 0, other.energy_max);
	
	eaten = true
	speed = 0
	// animazione
	flash = 6;

	alarm[0] = 20
}