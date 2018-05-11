
if !healing
{
    healbox = instance_create(x,y-32,obj_enji_healbox)
    healing = true
}


if !hkey
{
    healing = false
    state = states.normal;
}

