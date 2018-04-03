//get input
scr_active();

attack = true;
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
       

       
    
////////////SPRITE CONTROL


    if state == states.attack
    {      
        sprite_index = spr_paprika_attack;
        image_speed = .2 //room_speed/3;        
    }
