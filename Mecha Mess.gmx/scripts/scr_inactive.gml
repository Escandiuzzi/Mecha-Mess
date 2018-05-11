image_alpha = 1;
image_blend = c_dkgray
sprite_index = mech_sprite
hspd = 0;

//if (place_meeting(x, y+1, obj_colBox))

///move stuff
xaxis = 0
yaxis = 0
rkey = 0;
lkey = 0;
ukey = 0;
dkey = 0;
jkey = 0;
skey = 0;
akey = 0;
sakey = 0;
bkey = 0;
hkey = 0;
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


























/*
//react

move = key_left + key_right;
hspd = move * mspd;


//check ground
if (place_meeting(x, y+1, obj_colBox))
{
    vspd = key_jump * 2 * -jspd;
}
else
{

    if (vspd < 30) 
    vspd += obj_controller.grav;
    
}



///collisions


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



