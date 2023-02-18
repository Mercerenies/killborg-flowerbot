
// Inherit the parent event
event_inherited();

visible = false;

text = "Flowers";
onClick = function() {
  visible = false;
  obj_KillButton.visible = false;
  obj_IntroFace.dialogueGood();
}

color = c_white;