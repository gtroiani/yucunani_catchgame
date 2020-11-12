/// @description creates pie-shaped energy bar
///	Author: Giorgia Troiani and Angelo Lucia
///	Last updated: 12 - 11 - 2020

// draws circular sector from angle a to angle b
// assumes 0 <= a < b <= 360
function draw_pie(x ,y , radius, a, b){ 
	
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var precision = 360/numberofsections
   
    if (a < b) { // HTML5 version doesnt like triangle with only 2 sides
    
        draw_set_colour(c_black);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x,y);
        
		var tx, ty;
        for(var angle = a; 
			angle <= b; 
			angle += precision) {
			// the 90 here is the starting angle
            tx = lengthdir_x(radius, angle+90);
            ty = lengthdir_y(radius, angle+90);
            draw_vertex(x+tx, x+ty);
        }
        draw_primitive_end();
        
    }
}