///scr_paprika_block
script_execute(get_input);


if !bkey
{
    instance_destroy(blockBox);
    state = states.normal
}


///Gravity

//Check for ground
if(place_meeting(x, y+1, obj_colBox))
{
    airjump = 2;
    vspd = 0;
}
else
{
    // Gravity
    if (vspd < 12)
       {
          vspd += grav;
       }
}
      


//friction
if(hspd !=0)
    {
        if(hspd < 0 )
        {
        hspd += fric/4;             
        }    
        else
        {
        hspd -= fric/4;
        }
    }  

///sprite control
if(hspd == 0 and vspd == 0 and place_meeting(x, y+1,obj_colBox))
    {
        sprite_index = spr_paprika_idle;
        image_speed = .1//room_speed/6;
        
    }
    
if(hspd > 0 or hspd < 0) 
    {
        sprite_index = spr_paprika_walk
        image_speed = .1//room_speed/4
               
    }
    
if(vspd < 0)
    {
        sprite_index = spr_paprika_jump;
        image_speed = .1//room_speed/6;
        
        
    }
if(vspd > 0)
    {
        sprite_index = spr_paprika_fall;
        image_speed = .1//room_speed/6;
        
    }


///scr_knockback_paprika

hkb *= .7

       
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
     

hspd = hkb

