
if (!is_undefined(showingDia)) {
  draw_sprite(spr_DialogueBar, 0, x, y);
  draw_set_font(fnt_Instruction);
  draw_set_color(c_white);
  draw_text_ext(x + 184, y + 64, displayText, -1, 584);
}
