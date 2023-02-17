
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
  return is_undefined(currentAnimation) && (!obj_CurrentSetting.killMode);
}

canUndo = function() {
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
  _checkFlowers();
}

_checkFlowers = function() {
  var facingX = x + GRID_SIZE * dcos(facingDir * 45);
  var facingY = y + GRID_SIZE * dsin(facingDir * 45);
  var humanInFront = instance_position(facingX + GRID_SIZE / 2, facingY + GRID_SIZE / 2, obj_Human);
  if (instance_exists(humanInFront)) {
    undo_stack_apply_change(new EnflowerHumanChange(humanInFront));
  }
}

moveInDir = function(dir, relative, revertWheels) {
  var d;
  if (relative) {
    d = (facingDir + dir);
  } else {
    d = dir;
  }
  var dx = GRID_SIZE * dcos(d * 45);
  var dy = GRID_SIZE * dsin(d * 45);
  undo_stack_apply_change(new MoveBotChange(d, dx, dy, revertWheels));
}

rotateDir = function(dir, relative) {
  var d;
  if (relative) {
    d = facingDir + dir;
  } else {
    d = dir;
  }
  undo_stack_apply_change(new RotateBotChange(d));
}
