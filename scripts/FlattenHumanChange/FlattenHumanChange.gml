
function FlattenHumanChange(human_) : UndoableChange() constructor {
  human = human_;
  wasFlat = human.flattening;

  static can_apply = function() {
    return !wasFlat;
  }

  static apply = function() {
    human.flattening = true;
  }

  static undo = function() {
    human.flattening = false;
    human.image_yscale = 1;
  }

}
