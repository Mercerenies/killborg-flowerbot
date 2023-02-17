
function DeactivateZapTileChange(tile_) : UndoableChange() constructor {
  tile = tile_;
  prevIndex = tile.image_index;

  static can_apply = function() {
    return prevIndex != 1;
  }

  static apply = function() {
    tile.image_index = 1;
  }

  static undo = function() {
    tile.image_index = prevIndex;
  }

}
