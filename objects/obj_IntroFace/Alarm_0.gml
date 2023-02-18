
if (image_alpha < 1) {
  image_alpha += 0.05;
  alarm[0] = 2;
} else {
  if (room == rm_Outtro1) {
    dialogueEnd();
  } else {
    dialogue1();
  }
}