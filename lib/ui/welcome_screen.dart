// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:voice_assistant/ui/home_listen_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:neon/neon.dart';

class Swipe_Welcome_Page extends StatefulWidget {
  const Swipe_Welcome_Page({Key? key}) : super(key: key);

  @override
  State<Swipe_Welcome_Page> createState() => _Swipe_Welcome_PageState();
}

class _Swipe_Welcome_PageState extends State<Swipe_Welcome_Page> {
  List<Scaffold> pages = [
    Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 99, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                        'assets/undraw_Lost_online_re_upmy-removebg-preview.png')),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                      'Find yourself lost in a world full of modern technology, So you got stucked !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 130.0, right: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AvatarGlow(
                        animate: true,
                        glowColor: Colors.white,
                        endRadius: 20.0,
                        duration: const Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        repeatPauseDuration: const Duration(milliseconds: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x79FFFFFF)),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x79FFFFFF)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
    Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                        'assets/undraw_my_app_re_gxtj-removebg-preview.png')),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                      'Need to get a small assist from AI tool that can handle many things in a row ?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30)),
                ),
              ),
              // SizedBox(height: 100),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 130.0, right: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x79FFFFFF)),
                      ),
                      AvatarGlow(
                        animate: true,
                        glowColor: Colors.white,
                        endRadius: 20.0,
                        duration: const Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        repeatPauseDuration: const Duration(milliseconds: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0x79FFFFFF)))
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
    Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 99, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                        'assets/undraw_voice_assistant_nrv7-removebg-preview.png')),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                      'Now you can get that assist, just ask the AI,  WHAT CAN YOU DO ?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Builder(
                    builder: (BuildContext context) {
                      return OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Home_Listen_Screen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              'Ask Now!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ));
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 130.0, right: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x79FFFFFF)),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x79FFFFFF)),
                      ),
                      AvatarGlow(
                        animate: true,
                        glowColor: Colors.white,
                        endRadius: 20.0,
                        duration: const Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        repeatPauseDuration: const Duration(milliseconds: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
          builder: (context) => LiquidSwipe(
              // waveType: WaveType.liquidReveal,
              enableLoop: false,
              pages: pages)),
    );
  }
}
