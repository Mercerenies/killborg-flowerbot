
for (var i = 0; i < 20; i++) {
  var x1 = random_range(xx, xx + ww);
  var y1 = random_range(yy, yy + hh);
  part_particles_create(global.system, x1, y1, global.static_thunder, 1);
}

timer -= 1;
if (timer <= 0) {
  instance_destroy();
}