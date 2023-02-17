
function FlipInstructionCorruptionChange(index_) : UndoableChange() constructor {
  index = index_;

  static apply = function() {
    obj_InstructionSet.corruptedInstructions[index] = !obj_InstructionSet.corruptedInstructions[index];
    obj_InstructionSet.zapInstruction(index);
  }

  static undo = function() {
    obj_InstructionSet.corruptedInstructions[index] = !obj_InstructionSet.corruptedInstructions[index];
  }

}
