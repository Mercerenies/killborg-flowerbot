
var move_speed = -2;
with (obj_GrassTile) {
  x += move_speed;
  if (x < - GRID_SIZE * 2) {
    instance_destroy();
  }
}
with (obj_Cloud) {
  x += move_speed;
}
with (obj_RunningHuman) {
  x += move_speed;
}
with (obj_RunningBot) {
  x += move_speed;
}
xlim += move_speed;

while (xlim < room_width + 96) {
  generateColumn();
}