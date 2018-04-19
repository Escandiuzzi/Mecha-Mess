///scr_enemy0_idle
image_speed = 0
var coLine = collision_line(x,y,obj_paprika.x,obj_paprika.y,obj_colBox,false,true) 
var dis = point_distance(x,y,obj_paprika.x,obj_paprika.y)

if !coLine and dis < 140
{
    state = scr_enemy0_alert
}

///Goes to move state
if alarm[2] <=0
{
    alarm[2] = irandom_range(200,300)
}
