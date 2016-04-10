if(keyboard_check_pressed(vk_control)){ add_group = true; }
if(keyboard_check_released(vk_control)){ add_group = false; }
if(add_group){
    var numb = -1;
    if(keyboard_check(ord('0'))) numb = 0;
    else if(keyboard_check(ord('1'))) numb = 1;
    else if(keyboard_check(ord('2'))) numb = 2;
    else if(keyboard_check(ord('3'))) numb = 3;
    else if(keyboard_check(ord('4'))) numb = 4;
    else if(keyboard_check(ord('5'))) numb = 5;
    else if(keyboard_check(ord('6'))) numb = 6;
    else if(keyboard_check(ord('7'))) numb = 7;
    else if(keyboard_check(ord('8'))) numb = 8;
    else if(keyboard_check(ord('9'))) numb = 9;
    
    if(numb != -1){
        add_group = false;
        with obj_player_unit_master{
            if(selected){
                group = numb;
            }
        }
    }
}
