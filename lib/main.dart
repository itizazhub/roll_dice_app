import 'package:flutter/material.dart';

import 'package:roll_dice_app/screens/roll_dice_screen.dart';

void main() {
  runApp(RollDice());
}

class RollDice extends StatelessWidget {
  RollDice({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDiceScreen(),
    );
  }
}
