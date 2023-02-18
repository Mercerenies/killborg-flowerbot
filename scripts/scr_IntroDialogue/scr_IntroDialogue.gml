
function Intro_enableTextbox() {
  obj_IntroDialogue.displayText = "please enter your name, administrator.";
  obj_IntroTextbox.enable();
  obj_SubmitButton.visible = true;
}

function Intro_options() {
  obj_FlowerButton.visible = true;
  obj_KillButton.visible = true;
}

function Intro_toGame() {
  room_goto(rm_Level01);
}

function Intro_toDeath() {
  room_goto(rm_GameOver);
}

function Intro_toFlower() {
  room_goto(rm_Flower);
}
