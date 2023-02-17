
function WalkAnimation(length_, bot_, deltaX_, deltaY_) : BotAnimation() constructor {
  length = length_;
  bot = bot_;
  srcX = bot.x;
  srcY = bot.y;
  targetX = srcX;
  targetY = srcY;
  deltaX = deltaX_;
  deltaY = deltaY_;

  static getLength = function() {
    return length;
  }

  static init = function() {
    srcX = bot.x;
    srcY = bot.y;
    targetX = srcX + deltaX;
    targetY = srcY + deltaY;

    var humanAtTarget = instance_position(targetX + GRID_SIZE / 2, targetY + GRID_SIZE / 2, obj_Human);
    if (instance_exists(humanAtTarget)) {
      humanAtTarget.flatten();
    }

  }

  // Receives a value from 0 up to getLength() indicating progress.
  static play = function(tick) {
    var progress = tick / length;
    bot.x = lerp(srcX, targetX, progress);
    bot.y = lerp(srcY, targetY, progress);

    if (tick == length) {
      // See if we need to fall over.
      if (position_meeting(bot.x + GRID_SIZE / 2, bot.y + GRID_SIZE / 2, obj_RockyTile)) {
        undo_stack_apply_change(new BotFallOverChange());
        undo_stack_apply_change(new ActivateKillModeChange());
      }
    }
  }

}
