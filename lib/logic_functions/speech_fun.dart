import 'package:text_to_speech/text_to_speech.dart';

// ignore: non_constant_identifier_names
replay_logic(String text) {
  TextToSpeech tts = TextToSpeech();

  switch (text) {
    case 'what can you do':
      String x =
          'actally i am under devolping right now, but in the neer future i will be able to translate big statements, make calls, set alarms, open websites, play music and more';
      tts.speak(x);
      break;

    default:
      String x = 'ask me what can i do ';
      tts.speak(x);
  }
}
