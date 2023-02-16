
function Instruction() constructor {

  static getText = function() {}

  static getCorruptedText = function() {}

  static doNormal = function() {}

  static doCorrupted = function() {}

}

function ForwardInstruction(amount_) : Instruction() constructor {
  amount = amount_;

  static getText = function() {
    return "forward " + string(amount);
  }

  static getCorruptedText = function() {
    return "back " + string(amount);
  }

  static doNormal = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(DIR_FORWARD, true);
    }
  }

  static doCorrupted = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(DIR_BACKWARD, true);
    }
  }

}