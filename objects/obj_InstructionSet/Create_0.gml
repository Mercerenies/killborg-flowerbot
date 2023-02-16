
instructionCount = 1;
corruptedInstructions = [false];

instructions = [];

executeInstruction = function(slot) {
  var i = array_length(instructions);
  if (i >= instructionCount) {
    return false;
  }
  instructions[i] = slot;
  if (corruptedInstructions[i]) {
    slot.instruction.doCorrupted();
  } else {
    slot.instruction.doNormal();
  }
  return true;
}

// DEBUG CODE
instructionCount = 5;
corruptedInstructions = [false, true, false, false, false];
