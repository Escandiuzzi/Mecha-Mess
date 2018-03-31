//change sprite
sprite_index = spr_change;

//cancel Inputs
scr_inactive();

//stop horizontal move
//hspd = 0

//gravity
/*
if (place_meeting(x, y+1, obj_colBox))
{
    vspd = key_jump * 2 * -jspd;
}
else
{

    if (vspd < 30) 
    vspd += obj_controller.grav;
    
}


*/
///collisions
scr_collision();



/* ----------------------------------------------------------------------------

if (place_meeting(x,y+vspd,obj_colBox))
{
    while(!place_meeting(x,y+sign(vspd),obj_colBox))
    {
        y+=sign(vspd);
    }
    vspd = 0;
}


y += vspd 


if (place_meeting(x+hspd,y,obj_colBox))
{
    while(!place_meeting(x+sign(hspd),y,obj_colBox))
    {
        x+=sign(hspd);
    }
    hspd = 0;
}

x += hspd 

