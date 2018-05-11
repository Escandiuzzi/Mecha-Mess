///MOVE STATE
image_alpha = 1
image_speed = 0.05

//Get Input
script_execute(get_input);
get_input = scr_active

//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get length
if (xaxis == 0 and yaxis == 0) 
{
//    len = 0;    
    len = spd
    hspd *= .7
    vspd *= .7

}

else
{
    
    len = spd;
    hspd = lengthdir_x(len, dir);
    vspd = lengthdir_y(len, dir);

}

//Get hspd & vspd

if (hkey) and (healing == false)
{
    healing = true;
    spd = 2;
    instance_create(x,y, obj_enji_healbox);
}
else if (!hkey) 
{
    healing = false;
    spd = 4;
}


