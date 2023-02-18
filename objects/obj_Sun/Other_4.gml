
var levelNumber;
if (isAlien) {
  with (ctrl_CloudGenerator) {
    instance_destroy();
  }
  with (obj_Cloud) {
    image_alpha = 0.75;
    image_blend = c_purple;
  }
  levelNumber = real(string_digits(room_get_name(room)));
  setProgress((levelNumber - 1) / 4);
} else {
  levelNumber = real(string_digits(room_get_name(room)));
  var p = (levelNumber - 1) / (LEVEL_COUNT - 1);
  setProgress(p);
}

levelNumber = real(string_digits(room_get_name(room)));
if (isAlien) {
  levelNumber += LEVEL_COUNT;
}
saveGame(levelNumber);