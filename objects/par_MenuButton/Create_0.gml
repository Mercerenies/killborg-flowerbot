
text = "";

clicking = false;

onClick = function() {}

containedWithin = function(xx, yy) {
  draw_set_font(fnt_Title);
  var ww = string_width(text);
  var hh = string_height(text);
  return point_in_rectangle(xx, yy, x - ww / 2, y - hh / 2, x + ww / 2, y + hh / 2);
}

color = $535353;