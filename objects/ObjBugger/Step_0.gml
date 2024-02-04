/// @description Insert description here
// You can write your code in this editor

var player = instance_nearest(x, y, ObjJard); 

if distance_to_object(player) < 200
{
    var targetDir = point_direction(x, y, player.x, player.y);

    direction = targetDir

    motion_set(direction, speed);
}
else
{
    if random(100) < 50 
    {
        hspeed = -hspeed
    }

    motion_set(direction, speed);
}

if(y < 400){		// stinky
	vspeed = -vspeed;
}

// slime sucking timeout
if(suck > 0)
	suck--;