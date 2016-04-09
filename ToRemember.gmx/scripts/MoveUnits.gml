//Move order
//plus x, plus y, add 1, minus x, minus x, minus y, minus y, add 1
var xx = 0;
var yy = 0;
var cnt = 1;
var walkedx = 0;
var walkedy = 0;
var dir = 1;
var yorx = 0; //0 = x, 1 = y
var GRID = 4;
var looponce = true;
if(mouse_check_button_pressed(mb_middle)){
    if(!instance_place(mouse_x+xx,mouse_y+yy,obj_solid)){
        with obj_player_unit_master{
            if(selected){
                //Move to the target
                targetx = mouse_x+xx;
                targety = mouse_y+yy;
                //Find a new location for the next unit
                looponce = true;
                while(instance_position(mouse_x+xx,mouse_y+yy,obj_solid) || looponce){
                    looponce = false;
                    if(yorx == 0){
                        walkedx++;
                        xx += GRID*dir;
                        if(walkedx >= cnt){
                            walkedy = 0;
                            yorx = 1;
                        }
                    }else{
                        walkedy++;
                        yy += GRID*dir;
                        if(walkedy >= cnt){
                            walkedx = 0;
                            yorx = 0;
                            dir = -1*dir;
                            cnt++;
                        }
                    }
                }
            }
        }
    }
}


