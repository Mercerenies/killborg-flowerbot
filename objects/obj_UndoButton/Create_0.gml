
// Inherit the parent event
event_inherited();

onClick = function() {
  if (obj_Bot.canUndo()) {
    undo_stack_undo();
  }
}

x -= 128;
var inst = instance_create_layer(x + 128, y, "Instances_UI", obj_MainMenuButton);
inst.depth = -99900;