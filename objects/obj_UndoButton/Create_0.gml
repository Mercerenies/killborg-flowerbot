
// Inherit the parent event
event_inherited();

onClick = function() {
  if (obj_Bot.canUndo()) {
    undo_stack_undo();
  }
}