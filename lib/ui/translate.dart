// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:voice_assistant/logic_functions/translate_fun.dart';
import 'package:voice_assistant/ui/home_listen_screen.dart';

class Translate extends StatefulWidget {
  const Translate({Key? key}) : super(key: key);

  @override
  State<Translate> createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  var TextTranslated = translate('');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('tranlsate section'),
        ),
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      onChanged: ((value) {
                        setState(() {});
                        TextTranslated = translate(value);
                      }),
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: const InputDecoration(
                          hintText: "Type Here",
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.1, color: Colors.white))),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: FutureBuilder(
                        future: TextTranslated,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return Column(
                              children: [
                                Text(snapshot.data.toString()),
                                const SizedBox(
                                  height: 60,
                                ),
                              ],
                            );
                          } else {
                            return Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(' Translate To : en'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 90,
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home_Listen_Screen()),
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios_rounded),
                      Text('Goo back'),
                    ],
                  ))
            ]),
      ),
    );
  }
}
