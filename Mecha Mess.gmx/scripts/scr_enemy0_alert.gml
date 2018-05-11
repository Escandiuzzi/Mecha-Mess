///sprite control
image_speed = 0
hspd = 0
player = global.p1_active

var dir = point_direction(x, y, player.x, player.y)     

if  dir > 270 or dir < 90
{
    image_xscale = 1
}
else
{
    image_xscale = -1
}



///attack
var dis = point_distance(x,y,player.x,player.y)
var coLine = collision_line(x,y,player.x,player.y,obj_colBox,false,true) 

if !coLine and dis < 140 and alarm[0] <= 0 and alarm [1] <= 0
{
    alarm[0] = irandom_range (50,100)    
}

///back to idle


if coLine and alarm[1] <= 0
{
    alarm[1] = 120
}

