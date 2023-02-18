
if (isAlien) {
  with (ctrl_CloudGenerator) {
    instance_destroy();
  }
  with (obj_Cloud) {
    image_alpha = 0.75;
    image_blend = c_purple;
  }
  // TODO Progress
} else {
  var levelNumber = real(string_digits(room_get_name(room)));
  var p = (levelNumber - 1) / (LEVEL_COUNT - 1);
  setProgress(p);
}