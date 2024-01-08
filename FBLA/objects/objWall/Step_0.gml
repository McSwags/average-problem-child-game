/// @Walkspeed
// You can write your code in this editor I had no clue
if(keyboard_check(vk_down) && place_free(x, y + collisionSpeed))  {
    y += walkSpeed;
    image_speed = walkSpeed / 20;
    sprite_index = spr_player_down;
}
if(keyboard_check(vk_up) && place_free(x, y - collisionSpeed)) {
    y -= walkSpeed;
    image_speed = walkSpeed / 20;
    sprite_index = spr_player_up;
}
if(keyboard_check(vk_left) && place_free(x - collisionSpeed, y)) {
    x -= walkSpeed;
    image_speed = walkSpeed / 20;
    sprite_index = spr_player_left;
}
if(keyboard_check(vk_right) && place_free(x + collisionSpeed, y)) {
    x += walkSpeed;
    image_speed = walkSpeed / 20;
    sprite_index = spr_player_right;
}
if(keyboard_check(vk_nokey)) {
    image_speed = walkSpeed / 20;
    image_index = 0;
    walkSpeed = 1;
}
if(keyboard_check_pressed(ord("Z"))) {

    walkSpeed = 2;
}
if(keyboard_check_released(ord("Z"))) {
    walkSpeed = 1;
}