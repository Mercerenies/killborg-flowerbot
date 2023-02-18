
draw_set_font(fnt_Title);
if (containedWithin(mouse_x, mouse_y)) {
  draw_set_font(fnt_TitleLarge);
}
draw_set_color(color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);
draw_set_valign(fa_top);
draw_set_halign(fa_left);