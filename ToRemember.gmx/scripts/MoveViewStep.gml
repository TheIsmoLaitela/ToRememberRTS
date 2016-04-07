if(mouse_check_button_pressed(mb_right))
{
    mousex = window_mouse_get_x();
    mousey = window_mouse_get_y();
}
if(mouse_check_button(mb_right))
{
    var newx = window_mouse_get_x();
    var newy = window_mouse_get_y();
    view_xview[0] += round((mousex-newx)/4);
    view_yview[0] += round((mousey-newy)/4);
    mousex = newx;
    mousey = newy;
}

view_xview = median(0,view_xview,room_width-view_wview);
view_yview = median(0,view_yview,room_height-view_hview);
