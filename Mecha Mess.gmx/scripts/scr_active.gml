image_alpha = 1;
image_blend = c_white


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

var forward, backward

gamepad_set_axis_deadzone(0, .35)
xaxis = gamepad_axis_value (0, gp_axislh); 
yaxis = gamepad_axis_value (0, gp_axislv);

///movement on analog stick

if xaxis > 0
{
    forward = 1;
    backward = 0;
}
else if xaxis < 0 
{
    forward = 0;
    backward = 1;
}
else
{
    forward = 0;
    backward = 0;
}









rkey =  gamepad_button_check(0, gp_padr) or forward; //right key
lkey =  gamepad_button_check(0, gp_padl) or backward; //left key
ukey = gamepad_button_check_pressed(0, gp_padu);  //up key
dkey = gamepad_button_check_pressed(0, gp_padd); //down key
jkey = gamepad_button_check_pressed(0, gp_face1); //jump key
skey =  gamepad_button_check_pressed(0, gp_shoulderlb); //special skill key 
akey = gamepad_button_check_pressed(0, gp_face4);  //attack key
qakey = gamepad_button_check_pressed(0, gp_face3 ) //quick attack key
sakey = gamepad_button_check_pressed(0, gp_shoulderrb);  //second attack key
bkey = gamepad_button_check(0, gp_shoulderl); //block key

hkey = gamepad_button_check(0, gp_shoulderlb) //heal key




