
function RotateWheelsAnimation(lengthPerTurn_, bot_, targetDir_) : BotAnimation() constructor {
  bot = bot_;
  srcDir = bot.wheelsDir;
  targetDir = modulo(targetDir_, 8);
  lengthPerTurn = lengthPerTurn_;

  static getLength = function() {
    var angles = abs(angleDifference(targetDir, srcDir));
    if (angles == 0) {
      return 0;
    }
    return (angles - 0.5) * lengthPerTurn;
  }

  static init = function() {
    srcDir = bot.wheelsDir;
  }

  // Receives a value from 0 up to getLength() indicating progress.
  static play = function(tick) {
    if ((tick % lengthPerTurn == 0) && (tick != getLength())) {
      bot.wheelsDir += sign(angleDifference(targetDir, srcDir));
    }
  }

}
