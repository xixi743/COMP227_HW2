///@description 

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
//attack = keyboard_check_pressed(vk_up);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
// if don't want continuous attacking here, change to keyboard_check_pressed

// Map the keys
//keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(vk_enter, vk_space);
