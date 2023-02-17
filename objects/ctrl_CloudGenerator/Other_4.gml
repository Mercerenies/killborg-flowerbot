
for (var i = 0; i < 5; i++) {
  var xx = random_range(0, room_width);
  var yy = random_range(0, room_height * 0.25);
  instance_create_layer(xx, yy, "Instances", obj_Cloud);
}