
if (!visible) {
  exit;
}

if (mouse_check_button_pressed(mb_left) && obj_Bot.isIdle()) {
  if (point_in_rectangle(mouse_x, mouse_y, x, y, x + getWidth(), y + getHeight())) {
    dragging = true;
    anchorX = mouse_x - x;
    anchorY = mouse_y - y;
  }
}

if (dragging) {
  x = mouse_x - anchorX;
  y = mouse_y - anchorY;
}

if (mouse_check_button_released(mb_left)) {
  dragging = false;
  if (collision_rectangle(x, y, x + getWidth(), y + getHeight(), obj_InstructionSet, false, false)) {
    undo_stack_begin_move();
    if (obj_InstructionSet.executeInstruction(self)) {
      undo_stack_apply_change(new HideInstructionChange(self));
    }
  }
  x = xstart;
  y = ystart;
}
