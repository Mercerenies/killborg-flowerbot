
draw_set_color(c_white);

var t = "current setting: deliver flowers";
if (success) {
  t = "current setting: success!";
} else if (killMode) {
  t = "current setting: KILL ALL HUMANS";
  draw_set_color(make_color_rgb(255, 128, 128));
}

draw_set_font(fnt_Instruction);
draw_text(x, y, t);