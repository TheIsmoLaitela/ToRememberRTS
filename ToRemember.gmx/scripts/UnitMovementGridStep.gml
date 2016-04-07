/// MovementGridStep()

// Clear mp grid
//mp_grid_clear_all(mp_grid);

// Check if path from object to mouse destination is ok, then move
if(targetx != -1 && targety != -1){
    var movement = mp_grid_path(obj_controller.mp_grid,mp_path,x,y,targetx,targety,1);
    if (movement) {
        path_start(mp_path,spd,0,true);
        return true;
    }else{
        return false;
    }
}


