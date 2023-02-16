
MOVEMENT_SPEED = 4;

isMoving = false;
destX = 0;
destY = 0;

headDir = 0;
torsoDir = 0;
wheelsDir = 0;

facingDir = 0;

isIdle = function() {
  return !isMoving;
}

moveInDir = function(dir, relative) {
  var d;
  if (relative) {
    d = (facingDir + dir) * 45;
  } else {
    d = dir * 45;
  }
  destX = x + GRID_SIZE * dcos(d);
  destY = y + GRID_SIZE * dsin(d);
  isMoving = true;
}

rotateDir = function(dir, relative) {
  var d;
  if (relative) {
    d = facingDir + dir;
  } else {
    d = dir;
  }
  facingDir = d;
  headDir = d;
  torsoDir = d;
  wheelsDir = d;
}