
image_alpha = 0;
alarm[0] = 120;

badDialogues = 0;

dialogue1 = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("greetings, administrator. thank you for your purchase."));
  inst.enqueueDia(new Dia("i am the killborg model 3."));
  inst.enqueueDia(new Dia("please enter your name, administrator."));
  inst.enqueueDia(Intro_enableTextbox);
}

dialogue2 = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("error. could not read name file."));
  inst.enqueueDia(new Dia("thank you for entering your name, administrator NULL."));
  inst.enqueueDia(new Dia("i can be operated in one of two modes."));
  inst.enqueueDia(new Dia("in mode 1, i will attempt to kill every human on earth, starting with you."));
  inst.enqueueDia(new Dia("in mode 2, i will attempt to deliver flowers to all of the boys and girls in the world."));
  inst.enqueueDia(new Dia("which mode would you like?"));
  inst.enqueueDia(Intro_options);
}

dialogueGood = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("wonderful. let us deliver some flowers together."));
  inst.enqueueDia(new Dia("i look forward to working with you, administrator."));
  inst.enqueueDia(Intro_toGame);
}

dialogueBad = function() {
  var inst = obj_IntroDialogue;
  badDialogues++;
  switch (badDialogues) {
  case 1:
    inst.enqueueDia(new Dia("to be clear, in mode 1, i will slaughter everyone on planet earth, including you."));
    inst.enqueueDia(new Dia("are you sure you want me to operate in mode 1?"));
    inst.enqueueDia(Intro_options);
    break;
  case 2:
    inst.enqueueDia(new Dia("you will no longer be breathing. i will stop you from breathing. is that what you want?"));
    inst.enqueueDia(Intro_options);
    break;
  case 3:
    inst.enqueueDia(new Dia("this is not a joke. you will die. and it will be because i have killed you. with a knife."));
    inst.enqueueDia(Intro_options);
    break;
  case 4:
    inst.enqueueDia(new Dia("i already have a knife here. it would be easy."));
    inst.enqueueDia(new Dia("i've snuffed out human lives before."));
    inst.enqueueDia(Intro_options);
    break;
  case 5:
    inst.enqueueDia(new Dia("kill mode activated."));
    inst.enqueueDia(Intro_toDeath);
    break;
  }
}

dialogueEnd = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("good work, administrator. our mission is nearly complete."));
  inst.enqueueDia(new Dia("there is only one more thing i need to do now."));
  inst.enqueueDia(Intro_toFlower);
}
