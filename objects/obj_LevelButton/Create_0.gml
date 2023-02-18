
// Inherit the parent event
event_inherited();

levelNumber = 1;

text = "";
onClick = function() {
  var rmName = "rm_Level";
  if (levelNumber < 10) {
    rmName += "0" + string(levelNumber);
  } else {
    rmName += string(levelNumber);
  }
  var rm = asset_get_index(rmName);
  if (room_exists(rm)) {
    room_goto(rm);
  }
}