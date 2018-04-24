//get input
script_execute(get_input);

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
      
//Jumping
if(jkey) and (airjump > 0)
{
    vspd = -jspd;
    image_index = 0
    airjump -= 1
}
    
 

//Check for airjump



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
//Left Wall Jump
if(wall < 3) and jkey
        {
        image_index = 0
            if (place_meeting(x-1, y , obj_colBox)) && !place_meeting(x, y+1, obj_colBox)
            {
             vspd =-jspd
             wall++;
            }
            if airjump = 1
            {
                airjump = 1
            }
                    
        }
        else if place_meeting(x, y+1, obj_colBox)
            {
            wall = 0
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

//Right Wall Jump
if(wall < 3) and jkey
        {
        image_index = 0
            if (place_meeting(x+1, y , obj_colBox)) && !place_meeting(x, y+1, obj_colBox)
            {
            vspd =-jspd
            wall++;
            }
            if airjump = 1
            {
                airjump = 1
            }
        }
        else if place_meeting(x, y+1, obj_colBox)
            {
            wall = 0
            }    


//Check for not moving
if((!rkey && !lkey) ||(rkey && lkey))
{
    if(hspd !=0)
    {
        if(hspd < 0 )
        {
        hspd += fric;                     
            if (hspd > 0.1)
            {
                hspd = 0    
            }
        }
            
        else if(hspd > 0)
        {
        hspd -= fric;
            if (hspd < 0.1)
            {
                hspd = 0    
            }
        }
    }
}


//Attack
if(akey)
{
    state = states.attack;
    image_index = 0
}
if(sakey)
{
    state = states.sattack;
}

//Block

if(bkey)
{
    
    image_index = 0;
    blockBox = instance_create(x,y, obj_paprika_blockBox);
    state = states.block;
}


//state - Changing
 
if global.p1_changing = true
{
    state = states.change;
}

//state - First Skill

if (skey) and (first_CD = 0) and hspd != 0
{
   //sprite_index = spr_paprika_attack
   image_index = 3
   first_CD = 1
   alarm[0] = 10
   instance_create(x,y,myDashHB)
   state = states.dash
   
   
}




//SPRITE CONTROL

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
if(state == states.dash)
{
    {
        sprite_index = spr_paprika_attack
    }
}
    


