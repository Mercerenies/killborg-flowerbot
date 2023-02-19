
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
  if (!ds_queue_empty(dialogueQueue)) {
    showingDia = ds_queue_dequeue(dialogueQueue);
    showingDia.playSound();
  } else {
    showingDia = undefined;
  }
  displayText = "";
}

// Define this in creation code for rooms that have tutorial text.
//initialDia = function() {}