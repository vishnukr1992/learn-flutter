import 'dart:math';
import 'package:first_app/app_text.dart';
import 'package:flutter/material.dart';

final randamizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void onRollDice() {
    setState(() {
      currentDiceRoll = randamizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: onRollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
            ),
            child: const AppText.largeDarkText("Roll Dice"))
      ],
    );
  }
}
