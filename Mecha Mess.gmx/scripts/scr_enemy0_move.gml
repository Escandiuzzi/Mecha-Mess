///scr_enemy0_move
image_speed = .1
//image_index = 0

var walkDir = image_xscale;


if walkDir = 1 and place_meeting(x + 2, y, obj_enemy0)
{
    spd = .5    
}
else if walkDir = -1 and place_meeting(x - 2, y, obj_enemy0)
{
    spd = .5    
}
else
{
    spd = 1;
}

hspd = spd * walkDir;

