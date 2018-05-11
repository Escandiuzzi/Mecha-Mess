//get input
//script_execute(get_input);

attack = true;

if (alarm[2] <= 0) and (hb1 = false)
{
    alarm[2] = 5
    hb1 = true
}

/*
if(face == 0)
    {
    instance_create(x,y, obj_hitbox);
    }
    else if(face == 1)
    {
    instance_create(x,y,obj_hitbox);
    }
    //alarm[0] = 1;
    //alarm[2] = .8;
*/




// Gravity
    if (vspd < 15)
       {
          vspd += grav;
       }

 

////////////MOVEMENT

// Moving Right
if(rkey)
{
face = 0;

   if(hspd < spd)
   {
   hspd += fric
   } 
   else
   {
   hspd = spd;
   }   
}
// Moving Left
if(lkey)
{
face = 1;

if(hspd > spd)
{
  hspd -= fric;
  } 
  else
  {
  hspd = -spd;
  }   
}

if((!rkey && !lkey) ||(rkey && lkey))
{
if(hspd != 0)
    {
        if(hspd < 0 )
        {
        hspd += fric;             
        }    
        else
        {
        hspd -= fric;
        }
    }
}



if place_meeting(x,y+2, obj_colBox)
{   
    hspd *= .2      
}
else
{
    hspd *= .7       
}
       
    
////////////SPRITE CONTROL


    if state == states.quick
    {      
        sprite_index = spr_paprika_quick1;
        image_speed = .3 //room_speed/3;        
    }
    
///Create Hitbox

/*
if image_index = 3
{
   instance_create(x,y,obj_paprika_hitbox)
}
else if image_index = 5
{
    //instance_destroy(obj_paprika_hitbox)
}
