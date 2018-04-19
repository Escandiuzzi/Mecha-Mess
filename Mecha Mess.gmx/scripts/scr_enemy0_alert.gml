///sprite control
image_speed = 0

var dir = point_direction(x, y, obj_paprika.x, obj_paprika.y)     

if  dir > 270 or dir < 90
{
    image_xscale = 1
}
else
{
    image_xscale = -1
}

///attack
var dis = point_distance(x,y,obj_paprika.x,obj_paprika.y)
var coLine = collision_line(x,y,obj_paprika.x,obj_paprika.y,obj_colBox,false,true) 

if !coLine and dis < 140 and alarm[0] <= 0 and alarm [1] <= 0
{
    alarm[0] = irandom_range (50,140)    
}

///back to idle


if coLine and alarm[1] <= 0
{
    alarm[1] = 120
}

