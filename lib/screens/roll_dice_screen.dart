import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RollDiceScreen extends StatefulWidget {
  RollDiceScreen({super.key});

  State<RollDiceScreen> createState() {
    return _RollDiceScreenState();
  }
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int _counter = 2;
  void _setCounter() {
    setState(() {
      _counter = Random().nextInt(6) + 1;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 5, 109),
          title: Text(
            "Roll Dice App",
            style: GoogleFonts.outfit(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 33, 5, 109),
                Color.fromARGB(255, 68, 21, 149),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/dice-$_counter.png",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: _setCounter,
                child: Text(
                  "Roll Dice",
                  style: GoogleFonts.outfit(fontSize: 18, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
