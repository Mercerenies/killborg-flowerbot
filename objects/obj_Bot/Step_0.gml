
// DEBUG CODE
if (isIdle()) {

  if (keyboard_check(ord("A"))) {
    moveInDir(DIR_LEFT, true);
  } else if (keyboard_check(ord("D"))) {
    moveInDir(DIR_RIGHT, true);
  } else if (keyboard_check(ord("W"))) {
    moveInDir(DIR_FORWARD, true);
  } else if (keyboard_check(ord("S"))) {
    moveInDir(DIR_BACKWARD, true);
  }

  if (keyboard_check_pressed(ord("Q"))) {
    rotateDir(DIR_LEFT, true);
  } else if (keyboard_check_pressed(ord("E"))) {
    rotateDir(DIR_RIGHT, true);
  }

}

if (isMoving) {
  x = toward(x, destX, MOVEMENT_SPEED);
  y = toward(y, destY, MOVEMENT_SPEED);
  if ((x == destX) && (y == destY)) {
    isMoving = false;
  }
}
