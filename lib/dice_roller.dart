import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String i = "1";

  void handleClick() {
    int randomnum = 1 + Random().nextInt((6 + 1) - 1);
    setState(() {
      i = randomnum.toString();
    });
    print("I got clicked!");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$i.png",
          width: 150,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: handleClick,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice")),
      ],
    );
  }
}
