
var angle = wind(animTick) * (-20);
draw_self();
for (var i = 0; i < array_length(grassAnims); i++) {
  draw_sprite_ext(spr_GrowingGrass, grassAnims[i].index, x + grassAnims[i].xx, y + grassAnims[i].yy, 1, 1, angle, c_white, 1);
}
event_inherited();