
function EnflowerHumanChange(human_) : UndoableChange() constructor {
  human = human_;
  hadFlower = human.hasFlower;

  static can_apply = function() {
    return !hadFlower;
  }

  static apply = function() {
    human.hasFlower = true;
    part_particles_create(global.system, human.x + GRID_SIZE / 2, human.y - 4, global.flower, 4);
  }

  static undo = function() {
    human.hasFlower = false;
  }

}
