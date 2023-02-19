
instructionCount = 1;
corruptedInstructions = [false];

instructions = [];

executeInstruction = function(slot) {
  var i = array_length(instructions);
  if (i >= instructionCount) {
    return false;
  }
  audio_play_sound(Instruction, 5, false);
  undo_stack_apply_change(new PushInstructionChange(slot));
  if (corruptedInstructions[i]) {
    slot.instruction.doCorrupted();
  } else {
    slot.instruction.doNormal();
  }
  return true;
}

flipCorruptionOnNext = function() {
  var i = array_length(instructions);
  if (i < instructionCount) {
    undo_stack_apply_change(new FlipInstructionCorruptionChange(i));
  }
}

zapInstruction = function(index) {
  with (instance_create_layer(0, 0, "Instances", obj_ZapEffect)) {
    xx = other.x + 25;
    yy = other.y + 16 + index * INSTRUCTION_HEIGHT;
    ww = 250;
    hh = INSTRUCTION_HEIGHT;
  }
}
