/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)

draw_text(mouse_x, mouse_y, "X = " + string(mouse_x) + " Y = " + string(mouse_y))

var mx = mouse_x;
var my = mouse_y;
var n = collision_normal(mx, my, objCollision, 5, 1);
    
if (n > -1) {
    draw_set_color(c_white);
    draw_arrow(mx, my, mx + lengthdir_x(30, n), my + lengthdir_y(30, n), 11);
}

// sorry i fucked with this a little to get the shader to work but it should be fine :)