import 'dart:async'; // for asynchronous primitives

import 'package:flutter/material.dart';

// ignore: camel_case_types
class countdown extends StatefulWidget {
  // declares class for widget
  const countdown({
    super.key,
    required this.deadline, 
  });

  final DateTime deadline; 
  @override
  State<countdown> createState() => countdownState();
}

// ignore: camel_case_types
class countdownState extends State<countdown> {
  late Timer timer; 
  Duration duration = const Duration();
  late int count;

  @override 
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1),(_) => setCountDown(widget.deadline),);
    super.initState();
  }

  @override 
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void setCountDown(DateTime deadline) {
    // deadline passed as a parameter
    final current = DateTime.now();
    final timeRemaining = deadline.difference(current).inSeconds;
    count = timeRemaining;
    if(count >= 0){
      setState(() => duration = Duration(seconds: timeRemaining));
    }
    else{
      timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final hours = DefaultTextStyle(
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 55,
        wordSpacing: 16,
      ),
      child: Text(
        duration.inHours.toString().padLeft(2, '0'),
        textAlign: TextAlign.center,
      ),
    );

    // ignore: unused_local_variable
    final minutes = DefaultTextStyle(
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 55,
        wordSpacing: 16,
      ),
      child: Text(
        duration.inMinutes.remainder(60).toString().padLeft(2, '0'),
        textAlign: TextAlign.center,
      ),
    );

    // ignore: unused_local_variable
    final seconds = DefaultTextStyle(
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 55,
        wordSpacing: 16,
      ),
      child: Text(
        duration.inSeconds.remainder(60).toString().padLeft(2, '0'),
        textAlign: TextAlign.center,
      ),
    );

    // how the body of countdown timer would look
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: [Color(0xFFEF4136), Color(0xFFFAA83F)],
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: hours,
                  ),
                  const Text(
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                    ":",
                  ),
                ],
              )
              ),
          ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: [Color(0xFFEF4136), Color(0xFFFAA83F)],
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: minutes,
                  ),
                  const Text(
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                    ":",
                  ),
                ],
              )),
          ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: [Color(0xFFEF4136), Color(0xFFFAA83F)],
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: seconds,
              )),
        ],
      ),
    );
  }
}
