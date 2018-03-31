//collision

//Get Input
scr_active();

//react
move = -lkey + rkey;
hspd = move * mspd;


//jetpack
if (fuel > 0) //player flies and loses fuel
        {
            vspd += -.3;
            fuel -= 1.5;                             
        }
if vspd > 1 //limit speed of jetpack
{
    vspd = 1;
}

//goes back to normal state if player releases key or runs out of fuel
if !(skey) or (fuel < 1)
{
    state = states.normal;
}

