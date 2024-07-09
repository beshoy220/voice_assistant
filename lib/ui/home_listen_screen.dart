import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:voice_assistant/logic_functions/speech_fun.dart';
import 'package:voice_assistant/ui/translate.dart';

class Home_Listen_Screen extends StatefulWidget {
  const Home_Listen_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Listen_Screen> createState() => _Home_Listen_ScreenState();
}

class _Home_Listen_ScreenState extends State<Home_Listen_Screen> {
  ThemeData theme = ThemeData.from(colorScheme: const ColorScheme.dark());
  var _isListen = false;
  var _intial_text = 'Click button and speak !';
  double _confidance = 1.0;
  var currentLocaleId = '';
  var _openTranslate = false;

  stt.SpeechToText speech = stt.SpeechToText();
  var item = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  listen() async {
    bool available = await speech.initialize(
      // ignore: non_constant_identifier_names
      onError: (SpeechRecognitionError) {},
      onStatus: (status) {},
    );

    if (available) {
      // LANG TOOLS
      // var localeNames = await speech.locales();
      // var systemLocale = await speech.systemLocale();
      // var currentLocaleId = systemLocale?.localeId ?? '';

      speech.listen(
        onResult: (result) {
          setState(() {
            _isListen = true;
            _intial_text = result.recognizedWords;
            _confidance = result.confidence;
          });
          if (result.recognizedWords == 'open translate' ||
              result.recognizedWords == 'open Translate') {
            speech.stop();

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Translate()),
            );
          } else if (result.finalResult) {
            replay_logic(result.recognizedWords);
          }
        },
      );
    } else if (available == false) {}
  }

  void switchLang(selectedVal) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Voice assistant'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (theme ==
                        ThemeData.from(colorScheme: const ColorScheme.dark())) {
                      theme = ThemeData.from(
                          colorScheme: const ColorScheme.light());
                    } else {
                      theme =
                          ThemeData.from(colorScheme: const ColorScheme.dark());
                    }
                  });
                },
                icon: const Icon(Icons.dark_mode))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text('Confidance : ${_confidance * 100} %'),
                        Row(
                          children: [
                            const Text('Language: '),
                            DropdownButton<String>(
                              onChanged: (selectedVal) =>
                                  switchLang(selectedVal),
                              value: item,
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            speech.stop();
                            _isListen = false;
                          },
                          child: const Text('Stop'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Neon(
                text: 'Need Help!',
                color: Colors.green,
                fontSize: 30,
                font: NeonFont.Membra,
                flickeringText: true,
                flickeringLetters: const [0, 1],
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  _intial_text,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AvatarGlow(
            animate: _isListen,
            glowColor: Colors.cyan,
            endRadius: 60.0,
            duration: const Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: const Duration(milliseconds: 10),
            child: FloatingActionButton(
                // isExtended: true,
                onPressed: () {
                  setState(() {
                    _isListen == false ? _isListen = true : _isListen = false;
                  });
                  if (_isListen == true) {
                    listen();
                  } else if (_isListen == false) {
                    speech.stop();
                    // setState(() {
                    //   _isListen = true;
                    // });
                  }
                },
                child: _isListen == true
                    ? const Icon(Icons.hearing_disabled_sharp)
                    : const Icon(Icons.keyboard_voice_outlined)),
          ),
        ),
      ),
    );
  }
}
