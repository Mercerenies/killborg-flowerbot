
var humans = sprite_get_number(spr_Human) / 2;
human_index = irandom(humans - 1);

flattening = false;
hasFlower = false;

flatten = function() {
  undo_stack_apply_change(new ActivateKillModeChange());
  undo_stack_apply_change(new FlattenHumanChange(self));
}

enflower = function() {
  if (!hasFlower) {
    undo_stack_apply_change(new EnflowerHumanChange(self));
    audio_play_sound(Flower, 5, false);
  }
}