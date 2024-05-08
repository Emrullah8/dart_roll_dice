import 'dart:math';

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
//  var currentDiceRoll = 2; //Açılışta zar 2yi gösterecek
var currentDiceRoll = Random().nextInt(6) + 1; // Açılışta zar random sayı gösterecek

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(167, 0, 0, 0),
            foregroundColor: Colors.redAccent,
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: Wrap(
            children: const [
              Text('Roll Dice'),
              SizedBox(width: 8),
              Icon(
                Icons.ads_click, // İkon türü
                size: 24, // İkon boyutu
                color: Colors.redAccent, // İkon rengi
              ),
            ],
          ),
        ),
      ],
    );
  }
}
