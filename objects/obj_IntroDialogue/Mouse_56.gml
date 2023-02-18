
if (!is_undefined(showingDia)) {
  if (displayText == showingDia.text) {
    showingDia = undefined;
    _popDia();
  } else {
    displayText = showingDia.text;
  }
}