
isAlien = false;
progress = 0;

setProgress = function(amount) {
  amount = clamp(amount, 0, 1);
  progress = amount;
  x = lerp(room_width * 0.65, 0, amount);
  var yLerpFactor = 2.667 * (1 - amount) * (amount + 0.25);
  y = lerp(room_height * 0.02, room_height * -0.03, yLerpFactor);
  if (isAlien) {
    image_blend = make_color_rgb(192, 0, 0);
    var c = c_black;
    layer_background_blend(layer_background_get_id("Background"), c);
  } else {
    var h = lerp(42.5, 16.4, amount);
    var s = 255;
    var v = lerp(240.7, 208.3, amount);
    image_blend = make_color_hsv(h, s, v);
    var c = make_color_hsv(lerp(128, 158, amount), lerp(204, 193, amount), 233);
    layer_background_blend(layer_background_get_id("Background"), c);
  }
}

var levelNumber = real(string_digits(room_get_name(room)));
saveGame(levelNumber);