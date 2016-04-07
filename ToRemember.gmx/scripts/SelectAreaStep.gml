if(mouse_check_button_pressed(mb_left)){
    area_start_x = mouse_x;
    area_start_y = mouse_y;
}
if(mouse_check_button(mb_left)){
    area_end_x = mouse_x;
    area_end_y = mouse_y;
}
if(mouse_check_button_released(mb_left)){
    if(area_start_x > area_end_x){
        var x1 = area_end_x;
        var x2 = area_start_x;
    }else{
        var x1 = area_start_x;
        var x2 = area_end_x;
    }
    
    if(area_start_y > area_end_y){
        var y1 = area_end_y;
        var y2 = area_start_y;
    }else{
        var y1 = area_start_y;
        var y2 = area_end_y;
    }
    with obj_player_unit_master{
        selected = false;
        if(point_in_rectangle(x,y,x1,y1,x2,y2)){
            selected = true;
        }
    }
}
