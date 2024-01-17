/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event

/*#region movement
var _right = (keyboard_check(vk_right) or keyboard_check(ord("D")) && place_free(x + (attribute_speed + 2), y))
var _left = (keyboard_check(vk_left) or keyboard_check(ord("A")) && place_free(x + (-attribute_speed - 2), y))
var _up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
/*
var _up = (keyboard_check(vk_up) or keyboard_check(ord("W")) && place_free(x, y + (-attribute_speed - 2)))
var _down = (keyboard_check(vk_down) or keyboard_check(ord("S")) && place_free(x, y + (attribute_speed + 2)))
*/
/*
if (place_free(x, y+5) && jumping == false) {
	y += 5;
}

if (_up == 1) {
	
	// grabs start possition only if up is held and not jumping
	if (jumping == false) {
		jumpStartY = y;
	}
	
	// possition changes
	if (y >= jumpStartY - 150) {
		
		y -= 15
		jumping = true
	}
	

	
} // end if(_up == 1)
else {
	jumping = false;	
}
if !(place_free(x, y+2)) {
	jumping = false	
}

var _xinput = _right - _left
 //var _yinput = _down - _up

	x += (_xinput * attribute_speed)
	//y += (_yinput * attribute_speed)	
#endregion
*/
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, objWall))
{
	move_y = 0;
	if (!place_meeting(x+move_x, y+2, objWall) && place_meeting(x+move_x, y+10, objWall))
	{
			move_y = abs(move_x);
			move_x = 0;
	}
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, objWall);
if (move_x != 0) image_xscale = sign(move_x);