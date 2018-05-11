///scr_enemy0_idle
image_speed = 0
image_index = 0
hspd *= .9
var coLine = collision_line(x,y,player.x,player.y,obj_colBox,false,true) 
var dis = point_distance(x,y,player.x,player.y)

var pFacing = player.image_xscale

if (!coLine) and (dis < 140) and (pFacing != image_xscale)
{
    state = scr_enemy0_alert
}

///Goes to move state
if alarm[2] <=0
{
    alarm[2] = irandom_range(200,300)
}
