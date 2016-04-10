//Jump view to group
if(jump_view_to_group > 0){
    if(keyboard_check_pressed(vk_anykey)){
        if(group_number == real(string_digits(keyboard_lastchar))){
            with obj_player_unit_master{
                if(group == other.group_number){
                    view_xview[0] = x-view_wview[0]/2;
                    view_yview[0] = y-view_hview[0]/2;
                    jump_view_to_group = 0;
                    break;
                }
            }
        }
    }
    jump_view_to_group--;
}

//Select group
if(!keyboard_check(vk_control) && keyboard_check_pressed(vk_anykey)){
    group_number = real(string_digits(keyboard_lastchar));
    if(string(group_number) == keyboard_lastchar){
        jump_view_to_group = 10; //60 fps = ~0.20s
        keyboard_lastchar = '';
        with obj_player_unit_master{
            if(group == other.group_number){
                selected = true;
            }else{
                selected = false;
            }
        }
    }
}
