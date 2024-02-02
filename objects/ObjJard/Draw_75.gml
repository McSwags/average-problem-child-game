/// @description drawing things RIGHT

// colors for slime bar fill

if (barFlash = 0)
	draw_set_color(c_green);
else if (barFlash = 1)
	draw_set_color(c_red);

draw_rectangle(15, 5, (slime * 2) + 15, 30, false)

draw_set_color(c_black);

if(x > X_TRANSITION)	// doing this CORRECTLY WITH A CONSTANT
	draw_set_color(c_white);

draw_rectangle(15, 5, 215, 30, true)

if (slime < 30 && isBarRed == false) 
{
	isBarRed = true	
	alarm_set(0, 90)
}
else if (slime > 20 && isBarRed == true) 
{
	isBarRed = false;
	barFlash = 0
}
	
draw_text(20, 45, "Slimeballs: "+string(bricks))