if(mouse_check_button_pressed(mb_right))
{
    mousex = window_mouse_get_x();
    mousey = window_mouse_get_y();
}
if(mouse_check_button(mb_right))
{
    var newx = window_mouse_get_x();
    var newy = window_mouse_get_y();
    view_xview[0] += round((mousex-newx)/10);
    view_yview[0] += round((mousey-newy)/10);
    mousex = newx;
    mousey = newy;
}
if keyboard_check(ord('W')) || keyboard_check(vk_up){
    view_yview[0] -= keyboardspeed;
}
if keyboard_check(ord('A')) || keyboard_check(vk_left){
    view_xview[0] -= keyboardspeed;
}
if keyboard_check(ord('S')) || keyboard_check(vk_down){
    view_yview[0] += keyboardspeed;
}
if keyboard_check(ord('D')) || keyboard_check(vk_right){
    view_xview[0] += keyboardspeed;
}

view_xview = median(0,view_xview,room_width-view_wview);
view_yview = median(0,view_yview,room_height-view_hview);
