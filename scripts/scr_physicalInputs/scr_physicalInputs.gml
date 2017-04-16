//Get the player's input

key_right = keyboard_check(vk_right); // Gibt + 1 wenn gedrückt wurde
key_left = keyboard_check(vk_left); // Gibt -1 wenn gedrückt wurde
key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);
key_jump = keyboard_check_pressed(vk_space); // Kann nicht dauerhaft gedrückt werden
key_special = keyboard_check_pressed(vk_control);
