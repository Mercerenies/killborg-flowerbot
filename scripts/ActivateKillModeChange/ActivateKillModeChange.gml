
function ActivateKillModeChange() : UndoableChange() constructor {
  wasKillMode = obj_CurrentSetting.killMode;

  static can_apply = function() {
    return !wasKillMode;
  }

  static apply = function() {
    obj_CurrentSetting.killMode = true;
  }

  static undo = function() {
    obj_CurrentSetting.killMode = false;
  }

}
