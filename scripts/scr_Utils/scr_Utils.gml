
function toward(initial, target, delta) {
  if (abs(target - initial) <= delta) {
    return target;
  } else {
    return initial + sign(target - initial) * delta;
  }
}