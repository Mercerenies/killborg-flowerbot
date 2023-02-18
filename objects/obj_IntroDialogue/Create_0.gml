
dialogueQueue = ds_queue_create();
showingDia = undefined;
displayText = "";

isShowingDia = function() {
  return !is_undefined(showingDia);
}

enqueueDia = function(dia) {
  ds_queue_enqueue(dialogueQueue, dia);
  if (is_undefined(showingDia)) {
    _popDia();
  }
}

_popDia = function() {
  showingDia = undefined;
  while (!ds_queue_empty(dialogueQueue)) {
    showingDia = ds_queue_dequeue(dialogueQueue);
    if (is_real(showingDia)) {
      showingDia();
      showingDia = undefined;
    } else {
      displayText = "";
      break;
    }
  }
}
