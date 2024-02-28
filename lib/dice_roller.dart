import 'dart:math';
import 'package:flutter/material.dart';
import 'styled_text.dart';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var x = 1;

  void roll(){
    setState(() {
      x = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children : [
        const Text(
          "Roll The Dice !!!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
           ),
        Image.asset(
          'images/dice-$x.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: roll, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            )
          ),
          child: const StyledText("Roll Dice")
        ),
      ]
    );
  }
}