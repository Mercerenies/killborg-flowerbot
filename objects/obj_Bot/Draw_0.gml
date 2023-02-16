
var wheelsX = x + GRID_SIZE / 2;
var wheelsY = y + GRID_SIZE / 2;

var torsoX = wheelsX;
var torsoY = wheelsY - 6;

var headX = torsoX;
var headY = torsoY - 36;

draw_sprite(spr_BotWheels, modulo(wheelsDir, 4), wheelsX, wheelsY);
draw_sprite(spr_BotTorso, modulo(torsoDir, 8), torsoX, torsoY);
draw_sprite(spr_BotHead, modulo(headDir, 8), headX, headY);