
function RotateBotChange(newFacingDir_) : UndoableChange() constructor {
  oldFacingDir = obj_Bot.facingDir;
  newFacingDir = newFacingDir_;

  static apply = function() {
    with (obj_Bot) {
      facingDir = other.newFacingDir;
      queueAnimation(new RotateBodyAnimation(ROTATE_LENGTH, self, other.newFacingDir));
    }
  }

  static undo = function() {
    obj_Bot.facingDir = oldFacingDir;
    obj_Bot.wheelsDir = oldFacingDir;
    obj_Bot.torsoDir = oldFacingDir;
    obj_Bot.headDir = oldFacingDir;
  }

}
