
var angle = wind(animTick) * (-20);
draw_self();
for (var i = 0; i < array_length(grassAnims); i++) {
  draw_sprite_ext(spr_GrowingGrass, grassAnims[i].index, grassAnims[i].xx, grassAnims[i].yy, 1, 1, angle, c_white, 1);
}
draw_set_alpha(0.25);
draw_sprite(spr_Grid, 0, x, y);
if (!place_meeting(x + GRID_SIZE, y, obj_GrassTile)) {
  draw_sprite(spr_Grid, 1, x + GRID_SIZE, y);
}
if (!place_meeting(x, y + GRID_SIZE, obj_GrassTile)) {
  draw_sprite(spr_Grid, 2, x, y + GRID_SIZE);
}
draw_set_alpha(1);