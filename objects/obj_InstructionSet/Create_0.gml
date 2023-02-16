
instructionCount = 5;

instructions = [];

executeInstruction = function(slot) {
  if (array_length(instructions) >= instructionCount) {
    return false;
  }
  instructions[array_length(instructions)] = slot;
  slot.instruction.doNormal();
  return true;
}
