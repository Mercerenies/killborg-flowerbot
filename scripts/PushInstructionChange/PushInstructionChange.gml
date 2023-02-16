
function PushInstructionChange(instruction_) : UndoableChange() constructor {
  instruction = instruction_;

  static apply = function() {
    obj_InstructionSet.instructions[array_length(obj_InstructionSet.instructions)] = instruction;
  }

  static undo = function() {
    array_resize(obj_InstructionSet.instructions, array_length(obj_InstructionSet.instructions)-1);
  }

}
