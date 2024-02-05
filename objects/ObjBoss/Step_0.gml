state = "attack";
	
if (distance_to_object(ObjJard) < 300)	{
	
	
	if(stepinterval == 120){
		var inst = instance_create_layer(x, y-45, "Instances", objLethalProjectile);
	
		with (inst)
		{
			speed = 6;
			direction = point_direction(x, y, ObjJard.x, ObjJard.y);
			gravity = 0.1;
		}
	
		stepinterval = 0;

	}
	
	
	// menial tasks, ignore
	stepinterval++;
	
}

if(hp <= 0){
	instance_destroy();
	// you win
}