
var index = human_index * 2;
if (hasFlower) {
  index += 1;
}
draw_sprite_ext(spr_Human, index, x + GRID_SIZE / 2, y + GRID_SIZE / 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);