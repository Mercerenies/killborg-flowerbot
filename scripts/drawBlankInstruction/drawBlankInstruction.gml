// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawBlankInstruction(xx, yy, corrupted) {
  var color;
  var w = 250;
  if (corrupted) {
    color = make_colour_rgb(127, 38, 40);
  } else {
    color = make_colour_rgb(51, 51, 51);
  }
  draw_rectangle_color(xx, yy, xx + w + 8, yy + 24, c_black, c_black, c_black, c_black, false);
  draw_rectangle_color(xx + 2, yy + 2, xx + w + 6, yy + 22, color, color, color, color, false);
}