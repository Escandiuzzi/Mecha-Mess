///scr_dash_paprika

sprite_index = spr_paprika_attack
image_xscale = obj_paprika.image_xscale
image_speed = 0
image_index = 3
attack = true;
var dash = instance_create(x,y, obj_dash_effect);
dash.sprite_index = sprite_index;



vspd = 0
//DASH
if(rkey)
{
face = 0;

   if(hspd < spd)
   {
   hspd += fric
   } 
   else
   {
   hspd = spd*4;
   }   
}
if(lkey)
{
face = 1;

if(hspd > spd)
{
  hspd -= fric;
  } 
  else
  {
  hspd = -spd*4;
  }   
}



/*
if alarm[0] >= 0
{
    first_CD = 1
    alarm[0] = 7.7
        if hspd != 0
    {
        sprite_index = spr_paprika_attack
        image_speed = .2
        image_index = 0

    }
    first_CD = 1
    alarm[0] = room_speed/4
}
