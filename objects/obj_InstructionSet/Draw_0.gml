
var xx = x + 25;
var yy = y + 16;
var dy = INSTRUCTION_HEIGHT;

draw_self();

for (var i = 0; i < instructionCount; i++) {
  var corrupted = corruptedInstructions[i];
  if (i >= array_length(instructions)) {
    drawBlankInstruction(xx, yy, corrupted);
  } else {
    instructions[i].drawAt(xx, yy, corrupted);
  }
  yy += dy;
}