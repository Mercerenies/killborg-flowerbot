
var angle = wind(animTick) * (-20);
draw_self();
for (var i = 0; i < array_length(grassAnims); i++) {
  draw_sprite_ext(spr_GrowingGrass, grassAnims[i].index, grassAnims[i].xx, grassAnims[i].yy, 1, 1, angle, c_white, 1);
}