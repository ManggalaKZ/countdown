// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class countdowndpage extends StatefulWidget {
  countdowndpage({super.key});

  // final now = DateTime.now;

  @override
  State<countdowndpage> createState() => _countdowndpageState();
}

class _countdowndpageState extends State<countdowndpage> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
      duration: Duration(minutes: 3),
      tween: Tween(begin: Duration(minutes: 3), end: Duration.zero),
      onEnd: () {
        print('Timer ended');
      },
      builder: (BuildContext context, Duration value, Widget? child) {
        final minutes = value.inMinutes;
        final seconds = value.inSeconds % 60;
        final milisecond = value.inMilliseconds;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            '$minutes:$seconds:$milisecond',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        );
      },
    );
  }
}
