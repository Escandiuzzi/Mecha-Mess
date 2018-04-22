///scr_knockback_paprika

hkb *= .7
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
    state = states.normal
}



hspd = hkb
vspd = vkb





