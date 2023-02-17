
setProgress(0); // TODO Based on room progress

if (isAlien) {
  with (ctrl_CloudGenerator) {
    instance_destroy();
  }
  with (obj_Cloud) {
    image_alpha = 0.75;
    image_blend = c_purple;
  }
}