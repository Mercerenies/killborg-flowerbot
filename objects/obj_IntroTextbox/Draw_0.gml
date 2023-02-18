
if (enabled) {
  draw_set_font(fnt_Title);
  draw_set_color(c_white);
  draw_set_halign(fa_center);
  draw_text(x, y, keyboard_string + "|");
  draw_set_halign(fa_left);
}