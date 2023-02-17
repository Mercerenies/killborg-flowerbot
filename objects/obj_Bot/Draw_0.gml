
var wheelsX = x + GRID_SIZE / 2;
var wheelsY = y + GRID_SIZE / 2;

var torsoX = wheelsX - (- 6) * dsin(fallAngle);
var torsoY = wheelsY + (- 6) * dcos(fallAngle);

var headX = torsoX - (- 36) * dsin(fallAngle);
var headY = torsoY + (- 36) * dcos(fallAngle);

draw_sprite_ext(spr_BotWheels, modulo(wheelsDir, 4), wheelsX, wheelsY, 1, 1, -fallAngle, c_white, 1);
draw_sprite_ext(spr_BotTorso, modulo(torsoDir, 8), torsoX, torsoY, 1, 1, -fallAngle, c_white, 1);
draw_sprite_ext(spr_BotHead, modulo(headDir, 8), headX, headY, 1, 1, -fallAngle, c_white, 1);