scr_active();
if(idMech == 0){
    if(hspd == 0 and vspd == 0){
        
        sprite_index = spr_paprika_idle;
    }
    
    if(hspd > 0 or hspd < 0){
    
        sprite_index = spr_paprika_walk
    }
    
    if(vspd > 0){
        sprite_index = spr_paprika_jump;
    }
}
