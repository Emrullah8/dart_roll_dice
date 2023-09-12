import 'package:flutter/material.dart';
import "dice_roller.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF690161),
                Color(0xFFF94200),
              ],
            ),
          ),
          child: const Center(
            child: DiceRoller(),
          ),
        ),
      ),
    ),
  );
}
