
_tick += 0.01;
image_index = ((_tick < 3) ? 0 : 1);
var a = clamp(1.5 - abs((_tick % 3) - 1.5), 0, 1);
image_alpha = a;
if (_tick >= 6) {
  room_goto_next();
}