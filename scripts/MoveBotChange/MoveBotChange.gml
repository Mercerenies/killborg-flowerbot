
function MoveBotChange(wheelsDir_, deltaX_, deltaY_, revertWheels_) : UndoableChange() constructor {
  wheelsDir = wheelsDir_;
  srcX = obj_Bot.x;
  srcY = obj_Bot.y;
  deltaX = deltaX_;
  deltaY = deltaY_;
  revertWheels = revertWheels_;

  static apply = function() {
    with (obj_Bot) {
      if (abs(angleDifference(facingDir, other.wheelsDir)) != 4) {
        queueAnimation(new RotateWheelsAnimation(ROTATE_LENGTH, self, other.wheelsDir));
      }
      queueAnimation(new WalkAnimation(GRID_SIZE / MOVEMENT_SPEED, self, other.deltaX, other.deltaY));
      if (other.revertWheels) {
        queueAnimation(new RotateWheelsAnimation(ROTATE_LENGTH, self, facingDir));
      }
    }
  }

  static undo = function() {
    obj_Bot.x = srcX;
    obj_Bot.y = srcY;
  }

}
