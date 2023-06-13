import 'dart:math';

import 'package:first_app/dice.dart';
import 'package:first_app/styled_button.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var number = 2;

  void rollDice() {
    print("Rolling the dice...");
    setState(() {
      number = randomizer.nextInt(6) + 1;
    });
    print("Dice rolled! Result: $number");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Dice(number: number),
        const SizedBox(height: 150),
        StyledButton(onPressed: rollDice, text: const StyledText.buttonText())
      ],
    );
  }
}
