// Initialize variables
cell_size = 4; //room separated to 4x4 squares
grid_height = room_height;
grid_width = room_width;

// Create motion-planning elements
mp_grid = mp_grid_create(0,0,ceil(grid_width/cell_size),ceil(grid_height/cell_size),cell_size,cell_size);
mp_path = path_add();

// Obstacles
mp_grid_add_instances(mp_grid,obj_solid,false);


