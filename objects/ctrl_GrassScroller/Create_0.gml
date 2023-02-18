
generateColumn = function() {
  for (var yy = y; yy < room_height + 64; yy += GRID_SIZE) {
    instance_create_layer(xlim, yy, "Instances_Tiles", obj_GrassTile);
  }
  xlim += GRID_SIZE;
}

xlim = 0;
while (xlim < room_width + 96) {
  generateColumn();
}