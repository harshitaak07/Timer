import 'package:flutter/material.dart';
import 'package:timer_cryptic_hunt/countdown.dart';

void main() {
  runApp(const timer_cryptic_hunt());
}

// ignore: camel_case_types
class timer_cryptic_hunt extends StatelessWidget {
  const timer_cryptic_hunt({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptic Timer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.density_medium_outlined,
                  color: Colors.orange,
                  size: 30.0,
                ),
                Icon(
                  Icons.circle_notifications,
                  color: Colors.deepOrange,
                  size: 30.0,
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 234, 201),
                border: Border.all(
                  color: const Color.fromARGB(255, 245, 234, 201),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              child: const Column(
                children: <Widget>[
                  SizedBox(
                      height: 20.0,
                    ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                    'Cryptic Hunt',
                    style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    ),
                    )
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                    'Tick! Tock! Event starts soon!',
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
                    )
                    ),
                ]
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.center,
              child: countdown(
              deadline: DateTime.now().add(const Duration(hours: 4),)
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 234, 201),
                border: Border.all(
                  color: const Color.fromARGB(255, 245, 234, 201),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppBar(
              backgroundColor: Colors.deepOrange,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            )
          ],
        )
      ),
      ),
    );
  }
}

