import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice/components/styled_text.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceValue = 1;

  void rollDice() {
    final diceValue = random.nextInt(6) + 1;
    setState(() {
      currentDiceValue = diceValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceValue.png",
          width: 200,
        ),
        const SizedBox(height: 16),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16),
              foregroundColor: Colors.white,
            ),
            child: const StyledText('Roll Dice')),
      ],
    );
  }
}
