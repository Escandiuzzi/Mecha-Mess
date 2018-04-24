image_alpha = 1;

/*
///move stuff
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space)
key_shift = keyboard_check(vk_shift);


//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);


//Check for gamepad input
if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0 , gp_axislh);
    yaxis = gamepad_axis_value(0 , gp_axislv);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
}
*/

rkey =  gamepad_button_check(0, gp_padr); //right key
lkey =  gamepad_button_check(0, gp_padl); //left key
ukey = gamepad_button_check(0, gp_padu);  // up key
jkey = gamepad_button_check_pressed(0, gp_face1); //jump key
skey =  gamepad_button_check_pressed(0, gp_shoulderlb); //special skill key 
akey = gamepad_button_check_pressed(0, gp_face3);  //attack key
sakey = gamepad_button_check_pressed(0, gp_shoulderrb);  //second attack key
bkey = gamepad_button_check(0, gp_shoulderl); //block key

