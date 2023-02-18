
// Inherit the parent event
event_inherited();

visible = false;

text = "Kill";
onClick = function() {
  visible = false;
  obj_FlowerButton.visible = false;
  obj_IntroFace.dialogueBad();
}

color = c_white;