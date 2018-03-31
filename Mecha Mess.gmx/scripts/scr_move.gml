//get input
scr_active();

//Check for ground
if(attack == false){
if(place_meeting(x, y+1, obj_colBox)){
    airjump = 1;
     vspd = 0;
       
    //Jumping
    if(jkey){
        vspd = -jspd;
    }

} else {
    // Gravity
    if (hspd < 10){
          vspd += grav;
       }

//Check for airjump
if(idMech == 1){
    if (airjump > 0) {
        if(jkey){
            vspd = -jspd;
            airjump -= 1;
        }
    }
}
        
    if(keyboard_check_released(vk_up) && vspd <-4){
    vspd = -4;
    }
}

// Moving Right
if(rkey){
face = 0;
   if(hspd < spd){
   hspd += fric
   } else{
        hspd = spd;
      }   
//Left Wall Jump
if(idMech == 1){
    if(wall < 3){
        if (place_meeting(x-1, y , obj_colBox)) && !place_meeting(x, y+1, obj_colBox){
         vspd =-jspd
         wall++;
        }
     }
     else{
        alarm[1] = 90;
     }
  }
}

// Moving Left
if(lkey){
face = 1;
  if(hspd > spd){
   hspd -= fric;
   } else{
        hspd = -spd;
   }   
//Right Wall Jump
if(idMech == 1){
    if(wall < 3){
        if (place_meeting(x+1, y , obj_colBox)) && !place_meeting(x, y+1, obj_colBox){
         vspd =-jspd
         wall++;
        }
    }
    else{
        alarm[1] = 90;
    }
  }
}
//Check for not moving
if((!rkey && !lkey) ||(rkey && lkey)){
    if(hspd !=0){
        if(hspd < 0 ){
            hspd += fric;
                
        }    
            else{
                hspd -= fric;
                
            }
        }
    }
}

//Horizontal Collision
if(place_meeting(x+hspd, y, obj_colBox)){
    while(!place_meeting(x+sign(hspd), y, obj_colBox)){
    x+=sign(hspd)
    }
    hspd = 0;
}

//Move Horizontally
x+= hspd;

//Vertical Collision
if(place_meeting(x, y+vspd, obj_colBox)){
    while(!place_meeting(x, y+ sign(vspd), obj_colBox)){
    y+=sign(vspd)
    }
    vspd = 0;
}

//Move Vertically
y+= vspd;

//Attack
if(akey){

    state = states.attack;
}
if(sakey){

    state = states.sattack;
}


/*
//Control Sprites
if(yprevious !=y){
    sprite_index = spr_player_jump;
    image_speed = 1;
} else{
    if(xprevious !=x){
    sprite_index = spr_player_walk;
    image_speed = 0.8;
    }
    else{
    sprite_index = spr_player_stand; 
       }
}
*/

//Control Direction Player is Facing
if(xprevious < x){
image_xscale = 1;
}else if (xprevious > x){
image_xscale = -1;
}

//state - Changing
 
if global.p1_changing = true
{
    state = states.change;
}

//state - First Skill

if (skey) and (first_CD = 0)
    {
        state = first_skill
    }




