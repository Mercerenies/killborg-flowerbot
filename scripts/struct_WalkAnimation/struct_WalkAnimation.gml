
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

    var tileAtTarget = instance_position(targetX + GRID_SIZE / 2, targetY + GRID_SIZE / 2, par_Tile);
    if (!instance_exists(tileAtTarget)) {
      // Player moved out of bounds, die.
      undo_stack_apply_change(new BotFallOverChange());
      undo_stack_apply_change(new ActivateKillModeChange());
      // And cancel the current animation.
      targetX = srcX;
      targetY = srcY;
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
      // See if we corrupt an instruction.
      var zapTile = instance_position(bot.x + GRID_SIZE / 2, bot.y + GRID_SIZE / 2, obj_ZapTile);
      if (instance_exists(zapTile) && (zapTile.image_index == 0)) {
        undo_stack_apply_change(new DeactivateZapTileChange(zapTile));
        obj_InstructionSet.flipCorruptionOnNext();
      }
    }
  }

}
