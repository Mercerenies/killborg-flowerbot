
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

// DEBUG CODE
alarm[0] = 10;