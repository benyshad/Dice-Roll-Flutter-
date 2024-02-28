import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = randomizer.nextInt(6) + 1;
  void rollDice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: rollDice, child: const StyledText("Roll Dice"))
      ],
    );
  }
}
