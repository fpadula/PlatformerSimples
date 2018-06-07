var haxis = gamepad_axis_value(0, gp_axislh);
pressed_right = keyboard_check(vk_right) || (haxis > 0.5);
pressed_left = keyboard_check(vk_left) || (haxis < -0.5);
jump_pressed = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
jump_released = keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1);