
function Dia(text_, voice_) constructor {
  text = text_;
  voice = voice_;

  playSound = function() {
    if (!is_undefined(voice)) {
      if ((!is_undefined(global.diaVoice))) {
        audio_stop_sound(global.diaVoice);
      }
      global.diaVoice = audio_play_sound(voice, 10, false);
    }
  }

}
