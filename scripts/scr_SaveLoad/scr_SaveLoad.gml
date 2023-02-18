
function loadGame() {
  ini_open("game.dat");
  var level = ini_read_real("data", "unlocked", 0);
  ini_close();
  return level;
}

function saveGame(level) {
  level = max(level, loadGame());
  ini_open("game.dat");
  ini_write_real("data", "unlocked", level);
  ini_close();
}