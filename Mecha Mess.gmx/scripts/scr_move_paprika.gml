//get input
scr_active();

//Check for ground
if(place_meeting(x, y+1, obj_colBox))
{
    airjump = 1;
    vspd = 0;
      
    //Jumping
    if(jkey)
        {
        vspd = -jspd;
        image_index = 0
        }
    
} 

else
{
    // Gravity
    if (vspd < 12)
       {
          vspd += grav;
       }
}
    //Check for airjump

/*if (airjump > 0) 
        {
            if(jkey)
            image_index = 0
            {
                vspd = -jspd;
                airjump -= 1;
            }
        }
    
    if(keyboard_check_released(vk_up) && vspd <-4)
        {
        vspd = -4;
        }
}
*/
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
        }    
        else
        {
        hspd -= fric;
        }
    }
}

/*
//Horizontal Collision
if(place_meeting(x+hspd, y, obj_colBox))
{
    while(!place_meeting(x+sign(hspd), y, obj_colBox))
    {
    x+=sign(hspd)
    }
    hspd = 0;
}

//Move Horizontally
x+= hspd;

//Vertical Collision
if(place_meeting(x, y+vspd, obj_colBox))
{
    while(!place_meeting(x, y+ sign(vspd), obj_colBox))
    {
    y+=sign(vspd)
    }
    vspd = 0;
}

//Move Vertically
y+= vspd;
*/










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



//state - Changing
 
if global.p1_changing = true
{
    state = states.change;
}

//state - First Skill

if (skey) and (first_CD = 0) and hspd != 0
{
   sprite_index = spr_paprika_attack
   image_index = 3
   first_CD = 1
   alarm[0] = 10
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
    


