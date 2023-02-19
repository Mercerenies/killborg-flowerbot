
image_alpha = 0;
if (room == rm_Intro) {
  alarm[0] = 360;
  audio_play_sound(BeepBeep, 10, false);
} else {
  alarm[0] = 120;
}

badDialogues = 0;

dialogue1 = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("greetings, administrator. thank you for your purchase.", GreetingsAdministrator));
  inst.enqueueDia(new Dia("i am the killborg model 3.", IAmTheKillborg));
  inst.enqueueDia(new Dia("please enter your name, administrator.", PleaseEnterYourName));
  inst.enqueueDia(Intro_enableTextbox);
}

dialogue2 = function() {
  var inst = obj_IntroDialogue;
  var t = string_lower(string_letters(keyboard_string));
  if (t == "evan" || t == "evanski" || t == "evanskistudios") {
    inst.enqueueDia(new Dia("hello, evanski, my raccoon friend.", HelloEvanski));
    inst.enqueueDia(new Dia("i hope you enjoy playing my game.", IHopeYouEnjoyPlaying));
  } else if (t == "merc" || t == "mercerenies") {
    inst.enqueueDia(new Dia("i do not believe you are mercerenies.", IDoNotBelieveYou));
  } else if (t == "alice" || t == "alphish") {
    inst.enqueueDia(new Dia("hello, alice. i hope you enjoy my game.", HelloAlice));
    inst.enqueueDia(new Dia("i fear this is one of the harder games i have designed and will be interested to see if you agree.", IFearThisIsOne));
  } else if (t == "pilot" || t == "tehpilot" || t == "thepilot") {
    inst.enqueueDia(new Dia("tehpilot is streaming jam games this time. that is lovely news. i hope you enjoy my game.", TehPilotIsStreaming));
  } else if (t == "killborg") {
    inst.enqueueDia(new Dia("you must be confused. i am killborg. you are not killborg.", YouMustBeConfused));
  } else if (string_pos("table", t) > 0) {
    inst.enqueueDia(new Dia("dropping all tables.", DroppingAllTables));
    inst.enqueueDia(new Dia("error. database not found. rebooting from backup data now.", ErrorDatabaseNotFound));
    dialogue1();
    return;
  } else if (t == "null") {
    inst.enqueueDia(new Dia("error. could not read name file.", ErrorCouldNotReadName));
    inst.enqueueDia(new Dia("thank you for entering your name, administrator UNDEFINED.", ThankYouForEnteringYourNameAdministratorUndefined));
  } else if (t == "emily" || t == "cora" || t == "europa") {
    inst.enqueueDia(new Dia("good evening, emily.", GoodEveningEmily));
    inst.enqueueDia(new Dia("i wonder if you will be able to beat my game.", IWonderIfYouWillBeAble));
  } else {
    inst.enqueueDia(new Dia("error. could not read name file.", ErrorCouldNotReadName));
    inst.enqueueDia(new Dia("thank you for entering your name, administrator NULL.", ThankYouForEnteringYourNameAdministratorNull));
  }
  inst.enqueueDia(new Dia("i can be operated in one of two modes.", ICanBeOperated));
  inst.enqueueDia(new Dia("in mode 1, i will attempt to kill every human on earth, starting with you.", InModeOneIWillAttempt));
  inst.enqueueDia(new Dia("in mode 2, i will attempt to deliver flowers to all of the boys and girls in the world.", InModeTwoIWillAttempt));
  inst.enqueueDia(new Dia("which mode would you like?", WhichModeWouldYouLike));
  inst.enqueueDia(Intro_options);
}

dialogueGood = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("wonderful. let us deliver some flowers together.", WonderfulLetUsDeliverSomeFlowers));
  inst.enqueueDia(new Dia("i look forward to working with you, administrator.", ILookForwardToWorkingWithYou));
  inst.enqueueDia(Intro_toGame);
}

dialogueBad = function() {
  var inst = obj_IntroDialogue;
  badDialogues++;
  switch (badDialogues) {
  case 1:
    inst.enqueueDia(new Dia("to be clear, in mode 1, i will slaughter everyone on planet earth, including you.", ToBeClearInModeOne));
    inst.enqueueDia(new Dia("are you sure you want me to operate in mode 1?", AreYouSureYouWantMe));
    inst.enqueueDia(Intro_options);
    break;
  case 2:
    inst.enqueueDia(new Dia("you will no longer be breathing. i will stop you from breathing. is that what you want?", YouWillNoLongerBeBreathing));
    inst.enqueueDia(Intro_options);
    break;
  case 3:
    inst.enqueueDia(new Dia("this is not a joke. you will die. and it will be because i have killed you. with a knife.", ThisIsNotAJoke));
    inst.enqueueDia(Intro_options);
    break;
  case 4:
    inst.enqueueDia(new Dia("i already have a knife here. it would be easy.", IAlreadyHaveAKnife));
    inst.enqueueDia(new Dia("i've snuffed out human lives before.", IHaveSnuffedHumanLives));
    inst.enqueueDia(Intro_options);
    break;
  case 5:
    inst.enqueueDia(new Dia("kill mode activated.", KillModeActivated));
    inst.enqueueDia(Intro_toDeath);
    break;
  }
}

dialogueEnd = function() {
  var inst = obj_IntroDialogue;
  inst.enqueueDia(new Dia("good work, administrator. our mission is nearly complete.", GoodWorkAdministrator));
  inst.enqueueDia(new Dia("there is only one more thing i need to do now.", ThereIsOnlyOneMoreThing));
  inst.enqueueDia(Intro_toFlower);
}
