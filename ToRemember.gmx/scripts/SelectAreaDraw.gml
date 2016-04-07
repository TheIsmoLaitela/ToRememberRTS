var w = abs(area_end_x - area_start_x);
var h = abs(area_end_y - area_start_y);

if(area_start_x > area_end_x){
    var x1 = area_start_x;
    var x2 = area_end_x;
}else{
    var x1 = area_end_x;
    var x2 = area_start_x;
}

if(area_start_y > area_end_y){
    var y1 = area_start_y;
    var y2 = area_end_y;
}else{
    var y1 = area_end_y;
    var y2 = area_start_y;
}

draw_sprite_stretched(spr_select_area, 0, x2, y1, w, 1); //Top
draw_sprite_stretched(spr_select_area, 0, x2, y2, w, 1); //Bottom
draw_sprite_stretched(spr_select_area, 0, x1, y2, 1, h); //Left
draw_sprite_stretched(spr_select_area, 0, x2, y2, 1, h); //Right


