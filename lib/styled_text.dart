import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.color, {super.key});

  const StyledText.title({super.key}) 
  : text = "SourceCodeError", 
    color = Colors.white;

  const StyledText.buttonText({super.key}) 
  : text = "Roll now!", 
    color = Colors.black54;

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
          color: color, 
          fontWeight: FontWeight.bold, 
          fontSize: 30),
    );
  }
}
