
function WalkAnimation(length_, bot_, targetX_, targetY_) : BotAnimation() constructor {
  length = length_;
  bot = bot_;
  srcX = bot.x;
  srcY = bot.y;
  targetX = targetX_;
  targetY = targetY_;

  static getLength = function() {
    return length;
  }

  static init = function() {
    srcX = bot.x;
    srcY = bot.y;
  }

  // Receives a value from 0 up to getLength() indicating progress.
  static play = function(tick) {
    var progress = tick / length;
    bot.x = lerp(srcX, targetX, progress);
    bot.y = lerp(srcY, targetY, progress);
  }

}
