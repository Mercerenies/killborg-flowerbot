
// DEBUG CODE
if (isIdle()) {
  if (keyboard_check(ord("A"))) {
    destX = x - GRID_SIZE;
    destY = y;
    isMoving = true;
  } else if (keyboard_check(ord("D"))) {
    destX = x + GRID_SIZE;
    destY = y;
    isMoving = true;
  } else if (keyboard_check(ord("W"))) {
    destX = x;
    destY = y - GRID_SIZE;
    isMoving = true;
  } else if (keyboard_check(ord("S"))) {
    destX = x;
    destY = y + GRID_SIZE;
    isMoving = true;
  }
}

if (isMoving) {
  x = toward(x, destX, MOVEMENT_SPEED);
  y = toward(y, destY, MOVEMENT_SPEED);
  if ((x == destX) && (y == destY)) {
    isMoving = false;
  }
}