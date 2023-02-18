
tick += 1;
image_angle = 40 * sin(tick * 2 * pi / 80);

var maxX = x;
with (obj_RunningHuman) {
  maxX = max(x, maxX);
}

if (maxX < -64) {
  var delta = room_width - x + 550;
  x += delta;
  with (obj_RunningHuman) {
    x += delta;
    image_index += 1;
  }

  if (image_index == 0) {
    image_index = 1;
    x -= 540;
  } else {
    image_index = 0;
    x += 540;
  }

}