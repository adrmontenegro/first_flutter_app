import 'package:first_flutter_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required colors, super.key})
      : gradientColors = colors;

  const GradientContainer.darkRed({super.key})
      : gradientColors = const [
          Color.fromARGB(255, 196, 0, 0),
          Color.fromARGB(255, 0, 0, 0)
        ];

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColors, 
            begin: startAlignment, 
            end: endAlignment),
      ),
      child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              StyledText.title(),
              SizedBox(height: 150),
              DiceRoller()
        ],
      )),
    );
  }
  
}
