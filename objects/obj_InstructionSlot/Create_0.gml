
dragging = false;
anchorX = 0;
anchorY = 0;

getWidth = function() {
  draw_set_font(fnt_Instruction);
  return string_width(instruction.getText()) + 8;
}

getHeight = function() {
  return 24;
}

drawAt = function(xx, yy, corrupted) {
  var text;
  var color;
  if (corrupted) {
    text = instruction.getCorruptedText();
    color = make_colour_rgb(127, 38, 40);
  } else {
    text = instruction.getText();
    color = make_colour_rgb(51, 51, 51);
  }
  draw_set_font(fnt_Instruction);
  draw_rectangle_color(xx, yy, xx + string_width(text) + 8, yy + 24, c_black, c_black, c_black, c_black, false);
  draw_rectangle_color(xx + 2, yy + 2, xx + string_width(text) + 6, yy + 22, color, color, color, color, false);
  draw_set_color(c_white);
  draw_text(xx + 4, yy + 5, text);
}