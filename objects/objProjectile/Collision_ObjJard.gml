/// @description Slime is bouncy af
// slime bounces off other slime only!

if keyboard_check(ord("E"))		// pick up item
{								// honestly you can use this with any other thing really (just need new counter variable)
	ObjJard.bricks++;
	instance_destroy();
}

// when thrown
// horizontal 

if place_meeting(x+hspeed,y,objCollision)
{
	hspeed = -hspeed;	// bounce in the x
}

//vertical
if place_meeting(x,y+vspeed,objCollision)
{
	vspeed = -vspeed;	// bounce in the y
}