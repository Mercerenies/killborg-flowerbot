
MOVEMENT_SPEED = 4;
ROTATE_LENGTH = 10;

headDir = 0;
torsoDir = 0;
wheelsDir = 0;

facingDir = 0;

currentAnimation = undefined;
currentAnimationTick = 0;
animationQueue = ds_queue_create();

isIdle = function() {
  return is_undefined(currentAnimation);
}

queueAnimation = function(animation) {
  ds_queue_enqueue(animationQueue, animation);
  if (is_undefined(currentAnimation)) {
    _popAnimation();
  }
}

_popAnimation = function() {
  while (!ds_queue_empty(animationQueue)) {
    var next = ds_queue_dequeue(animationQueue);
    next.init();
    next.play(0);
    currentAnimationTick = 0;
    if (next.getLength() > 0) {
      // If an animation has length 0, call it once but then move on immediately.
      currentAnimation = next;
      return;
    }
  }
  currentAnimation = undefined;
}

moveInDir = function(dir, relative) {
  var d;
  if (relative) {
    d = (facingDir + dir);
  } else {
    d = dir;
  }
  var destX = x + GRID_SIZE * dcos(d * 45);
  var destY = y + GRID_SIZE * dsin(d * 45);
  if (abs(angleDifference(facingDir, d)) != 4) {
    queueAnimation(new RotateWheelsAnimation(ROTATE_LENGTH, self, d));
  }
  queueAnimation(new WalkAnimation(GRID_SIZE / MOVEMENT_SPEED, self, destX, destY));
  queueAnimation(new RotateWheelsAnimation(ROTATE_LENGTH, self, facingDir));
}

rotateDir = function(dir, relative) {
  var d;
  if (relative) {
    d = facingDir + dir;
  } else {
    d = dir;
  }
  facingDir = d;
  queueAnimation(new RotateBodyAnimation(ROTATE_LENGTH, self, d));
}