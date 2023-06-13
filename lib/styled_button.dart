import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.onPressed, required this.text, super.key});


  final VoidCallback onPressed;
  final StyledText text;

  @override
  Widget build(context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: const  Color.fromARGB(255, 169, 0, 0),
          shadowColor: Colors.black,
          
          padding: const EdgeInsets.all(10)
        ),
        child: text
        );
  }
}
