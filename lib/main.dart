import 'package:flutter/material.dart';
import 'package:timer_cryptic_hunt/countdown.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const timer_cryptic_hunt());
}

// ignore: camel_case_types
class timer_cryptic_hunt extends StatelessWidget {
  const timer_cryptic_hunt({super.key});
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
                  height: 10.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.density_medium_outlined,
                      color: Color(0xFFF5753B),
                      size: 28.0,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Color(0xFFF5753B),
                      size: 28.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      height: 26,
                      width: 25,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 182,
                      width: 315,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCF3C5),
                        border: Border.all(
                          color: const Color(0xFFFCF3C5),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 118.88,
                          width: 294,
                          color: const Color(0xFFFCF3C5),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  const Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Cryptic Hunt',
                                        style: TextStyle(
                                          color: Color(0xFFEF4136),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          fontFamily: 'Poppins',
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      /*
                                      Stack(
                                          alignment: Alignment.topLeft,
                                          children: <Widget>[
                                            Positioned(
                                              left: 200,
                                              top: 400,
                                              child: Text(
                                                'Phase 1',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Poppins'),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ])
                                          */
                                          
                                    ],
                                  ),
                                  const Expanded(child: SizedBox()),
                                  SvgPicture.asset('assets/g12.svg')
                                ],
                              ),
                              const Divider(
                                color: Colors.black,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10.0),
                                child: Text(
                                  'Tick! Tock! Event Starts soon',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2.2,
                    ),
                    const SizedBox(
                      height: 26,
                      width: 28,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 66,
                  width: 315,
                  child: countdown(
                      deadline: DateTime.now().add(const Duration(minutes: 1))),
                ),
              ],
            )),
      ),
    );
  }
}
