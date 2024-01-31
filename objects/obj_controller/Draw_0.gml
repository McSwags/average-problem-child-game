/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)

draw_text(mouse_x, mouse_y, "X = " + string(mouse_x) + " Y = " + string(mouse_y))

draw_line(mouse_x, mouse_y, ObjJard.x, ObjJard.y-40);