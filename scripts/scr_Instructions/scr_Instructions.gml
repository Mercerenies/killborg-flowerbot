
function Instruction() constructor {

  static getText = function() {}

  static getCorruptedText = function() {}

  static doNormal = function() {}

  static doCorrupted = function() {}

}

function WaitInstruction() : Instruction() constructor {

  static getText = function() {
    return "wait";
  }

  static getCorruptedText = function() {
    return "wait";
  }

  static doNormal = function() {
    // Pass.
  }

  static doCorrupted = function() {
    // Pass.
  }

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
      obj_Bot.moveInDir(dir, true, i == amount - 1);
    }
  }

  static doCorrupted = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(dir + 4, true, i == amount - 1);
    }
  }

}

function AbsMoveInstruction(dir_, amount_) : Instruction() constructor {
  dir = dir_;
  amount = amount_;

  static directionWord = function(d) {
    switch (modulo(d, 8)) {
    case DIR_NORTH:
      return "north";
    case DIR_SOUTH:
      return "south";
    case DIR_WEST:
      return "west";
    case DIR_EAST:
      return "east";
    }
    return "north";
  }

  static getText = function() {
    return directionWord(dir) + " " + string(amount);
  }

  static getCorruptedText = function() {
    return directionWord(dir + 4) + " " + string(amount);
  }

  static doNormal = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(dir, false, i == amount - 1);
    }
  }

  static doCorrupted = function() {
    for (var i = 0; i < amount; i++) {
      obj_Bot.moveInDir(dir + 4, false, i == amount - 1);
    }
  }

}

function RotateInstruction(dir_) : Instruction() constructor {
  dir = dir_;

  static directionWord = function(d) {
    switch (modulo(d, 8)) {
    case DIR_FORWARD:
      return "forward";
    case DIR_BACKWARD:
      return "180";
    case DIR_LEFT:
      return "left";
    case DIR_RIGHT:
      return "right";
    }
    return "forward";
  }

  static getText = function() {
    return "rotate " + directionWord(dir);
  }

  static getCorruptedText = function() {
    return "rotate " + directionWord(- dir);
  }

  static doNormal = function() {
    obj_Bot.rotateDir(dir, true);
  }

  static doCorrupted = function() {
    obj_Bot.rotateDir(- dir, true);
  }

}

function AbsRotateInstruction(dir_) : Instruction() constructor {
  dir = dir_;

  static directionWord = function(d) {
    switch (modulo(d, 8)) {
    case DIR_NORTH:
      return "north";
    case DIR_SOUTH:
      return "south";
    case DIR_WEST:
      return "west";
    case DIR_EAST:
      return "east";
    }
    return "north";
  }

  static getText = function() {
    return "face " + directionWord(dir);
  }

  static getCorruptedText = function() {
    return "face " + directionWord(dir + 4);
  }

  static doNormal = function() {
    obj_Bot.rotateDir(dir, false);
  }

  static doCorrupted = function() {
    obj_Bot.rotateDir(dir + 4, false);
  }

}
