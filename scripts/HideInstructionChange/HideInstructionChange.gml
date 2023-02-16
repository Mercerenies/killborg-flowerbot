
function HideInstructionChange(instruction_) : UndoableChange() constructor {
  instruction = instruction_;
  oldVisible = instruction.visible;
  newVisible = false;

  static can_apply = function() {
    return oldVisible != newVisible;
  }

  static apply = function() {
    instruction.visible = newVisible;
  }

  static undo = function() {
    instruction.visible = oldVisible;
  }

}