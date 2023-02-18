
// Inherit the parent event
event_inherited();

visible = false;

text = "Submit";
onClick = function() {
  if (keyboard_string != "") {
    visible = false;
    obj_IntroTextbox.disable();
    obj_IntroFace.dialogue2();
  }
}

color = c_white;