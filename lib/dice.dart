import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({required this.number, super.key});
  const Dice.initial({super.key}) : number = 3;

  final int number;

  @override
  Widget build(context){
    return Image.asset("assets/images/dice-$number.png",
      width: 200,
    );
  }

}