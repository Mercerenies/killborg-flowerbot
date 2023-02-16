
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
  }

  // Receives a value from 0 up to getLength() indicating progress.
  static play = function(tick) {
    var progress = tick / length;
    bot.x = lerp(srcX, targetX, progress);
    bot.y = lerp(srcY, targetY, progress);
  }

}
