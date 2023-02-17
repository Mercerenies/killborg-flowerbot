
// Animations
if (is_undefined(currentAnimation)) {
  _popAnimation();
}
if (!is_undefined(currentAnimation)) {
  currentAnimationTick += 1;
  currentAnimation.play(currentAnimationTick);
  if (currentAnimationTick >= currentAnimation.getLength()) {
    _popAnimation();
  }
}

if (fallingOver) {
  fallAngle = toward(fallAngle, -90, 6);
}