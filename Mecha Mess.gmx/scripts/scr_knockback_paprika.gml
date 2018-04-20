///scr_knockback_paprika
image_speed = .2
sprite_index = spr_paprika_KB


if  bulletDir > 270 or bulletDir < 90
{
    hspd = -3
    vspd = -1
}
else
{
    hspd = 3
    vspd = -1
}

if alarm[4] <= 0
{
    alarm[4] = 10
}


