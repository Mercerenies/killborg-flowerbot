
function BotFallOverChange() : UndoableChange() constructor {
  wasFalling = obj_Bot.fallingOver;

  static can_apply = function() {
    return !wasFalling;
  }

  static apply = function() {
    obj_Bot.cancelAnimations();
    obj_Bot.fallingOver = true;
  }

  static undo = function() {
    obj_Bot.fallingOver = false;
    obj_Bot.fallAngle = 0;
  }

}
