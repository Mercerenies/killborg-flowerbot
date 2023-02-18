
var lvls = min(LEVEL_COUNT, loadGame());
for (var i = 0; i < lvls; i++) {
  var col = i % 5;
  var row = i div 5;
  var xx = (col + 1) * room_width / 6;
  var yy = y + row * 100;
  with (instance_create_layer(xx, yy, "Instances_UI", obj_LevelButton)) {
    levelNumber = i + 1;
  }
}