//Move order
if(mouse_check_button_pressed(mb_middle)){
    with obj_player_unit_master{
        var xx = irandom_range(-4,4); //Make this better
        var yy = irandom_range(-4,4); //Prevent units stackin in one point
        if(selected){
            targetx = mouse_x+xx;
            targety = mouse_y+yy;
        }
    }
}


