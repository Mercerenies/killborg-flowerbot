
// Inherit the parent event
event_inherited();

onClick = function() {
  obj_DialogueBar.initialDia();
}

if (!variable_instance_exists(obj_DialogueBar, "initialDia")) {
  visible = false;
}