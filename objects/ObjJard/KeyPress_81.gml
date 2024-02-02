/// @description Throwing script
// Throwing shit
if(bricks>0){
	var inst = instance_create_layer(x, y-45, "Instances", objProjectile);
	with (inst)
	{
	    speed = 6;
	    direction = point_direction(x, y, mouse_x, mouse_y);
		gravity = 0.1;
	}

	bricks--;	// let's still use this as a counter
}