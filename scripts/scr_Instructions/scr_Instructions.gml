
function Instruction() constructor {

  static getText = function() {}

  static getCorruptedText = function() {}

  static doNormal = function() {}

  static doCorrupted = function() {}

}

function MoveInstruction(dir_, amount_) : Instruction() constructor {
  dir = dir_;
  amount = amount_;

  static directionWord = function(d) {
    switch (modulo(d, 8)) {
    case DIR_FORWARD:
      return "forward";
    case DIR_BACKWARD:
      return "back";
    case DIR_LEFT:
      return "left";
    case DIR_RIGHT:
      return "right";
    }
    return "forward";
  }

  static getText = function() {
    return directionWord(dir) + " " + string(amount);
  }

  static getCorruptedText = function() {
    return directionWord(dir + 4) + " " + string(amount);
  }

  static doNormal = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(dir, true);
    }
  }

  static doCorrupted = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(dir + 4, true);
    }
  }

}