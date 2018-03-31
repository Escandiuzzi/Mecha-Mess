///scr_collision


if (place_meeting(x+hspd,y,obj_colBox))
{
    while(!place_meeting(x+sign(hspd),y,obj_colBox))
    {
        x+=sign(hspd);
    }
    hspd = 0;
}

x += hspd 

if (place_meeting(x,y+vspd,obj_colBox))
{
    while(!place_meeting(x,y+sign(vspd),obj_colBox))
    {
        y+=sign(vspd);
    }
    vspd = 0;
}


y += vspd 



