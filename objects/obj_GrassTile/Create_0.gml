
grassAnims = [];
animTick = 0;

var tiles = sprite_get_number(spr_GrowingGrass);

var anims = choose(2, 2, 3, 3, 4, 4, 4, 5);
for (var i = 0; i < anims; i++) {
  var xx = random_range(GRID_SIZE * 0.1, GRID_SIZE * 0.9);
  var yy = random_range(GRID_SIZE * 0.1, GRID_SIZE * 0.9);
  grassAnims[i] = new GrassTileAnim(xx, yy, irandom_range(0, tiles - 1));
}
