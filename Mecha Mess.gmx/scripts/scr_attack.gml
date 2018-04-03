//get input
scr_active();

if(idMech == 1){
    attack = true;
    if(face == 0){
    instance_create(x,y, obj_hitbox);
    }
    else if(face == 1){
    instance_create(x,y,obj_hitbox);
    }
    alarm[0] = 1;
    alarm[2] = .8;
}

if(idMech == 2){
   attack = true;
    if(face == 0){
    instance_create(x, y, obj_bullet);
    }
    else if(face == 1){
    instance_create(x, y, obj_bullet);
    }
    alarm[0] = 1;
}

if(idMech == 3){
    attack = true;
    if(face == 0){
    instance_create(x, y, obj_hadouken);
    }
    else if(face == 1){
    instance_create(x, y, obj_hadouken);
    }
    alarm[0] = 1;
}

