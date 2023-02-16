
var xx = x + 25;
var yy = y + 16;
var dy = INSTRUCTION_HEIGHT;

draw_self();

for (var i = 0; i < instructionCount; i++) {
  if (i >= array_length(instructions)) {
    drawBlankInstruction(xx, yy, false);
  } else {
    instructions[i].drawAt(xx, yy, false);
  }
  yy += dy;
}