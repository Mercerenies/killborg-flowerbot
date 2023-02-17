
var index = human_index * 2;
if (hasFlower) {
  index += 1;
}
var sprite = spr_Human;
if (obj_Sun.isAlien) {
  sprite = spr_NotHuman;
}
draw_sprite_ext(spr_NotHuman, index, x + GRID_SIZE / 2, y + GRID_SIZE / 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);