hkb *= .9
vkb += .5


       
if colDir = 1
{       
    if hkb < .1
    {
        hkb = 0
    }
}
if colDir = -1
{       
    if hkb > -.1
    {
        hkb = 0
    }
}
     


if hkb = 0
{
    image_index = 0;
    state = scr_enemy0_alert
}



hspd = hkb
vspd = vkb
