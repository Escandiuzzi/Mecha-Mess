if(idMech == 1){
    attack = true;
    var dash = instance_create(x,y, obj_dash_effect);
    dash.sprite_index = sprite_index;
    
    if(face == 0){
    hspd = 15;
    }
    
    else{
    hspd = -15;
    }
    
    alarm[3] = 1;
}
