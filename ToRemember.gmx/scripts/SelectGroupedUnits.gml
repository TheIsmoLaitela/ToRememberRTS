if(keyboard_check(vk_control) || keyboard_check_pressed(vk_anykey)){
    var group_number = real(string_digits(keyboard_lastchar));
    if(string(group_number) == keyboard_lastchar){
        keyboard_lastchar = '';
        with obj_player_unit_master{
            if(group == group_number){
                selected = true;
            }else{
                selected = false;
            }
        }
    }
}
