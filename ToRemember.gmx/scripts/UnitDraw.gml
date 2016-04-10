draw_sprite(spr_unit_hitbox,0,round(x),round(y));

//Show HP
if(start_hp != current_hp){
    if(start_hp/10 >= current_hp){ //10% or less left
        draw_sprite_stretched(spr_health_bar,2,round(x),round(y)-4,5,1);
    }else if(start_hp/2 >= current_hp){ //50% or less left
        draw_sprite_stretched(spr_health_bar,1,round(x),round(y)-4,5,1);
    }else{//More than 50% left
        draw_sprite_stretched(spr_health_bar,0,round(x),round(y)-4,5,1);
    }
}

//Show if selected
if(selected){
    draw_sprite(spr_unit_selected,0,round(x),round(y));
}
