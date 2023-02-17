
draw_set_alpha(0.25);
draw_sprite(spr_Grid, 0, x, y);
if (!place_meeting(x + GRID_SIZE, y, par_Tile)) {
  draw_sprite(spr_Grid, 1, x + GRID_SIZE, y);
}
if (!place_meeting(x, y + GRID_SIZE, par_Tile)) {
  draw_sprite(spr_Grid, 2, x, y + GRID_SIZE);
}
draw_set_alpha(1);