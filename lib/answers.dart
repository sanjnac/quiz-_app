import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback onTap; // Change 'void function() onTap' to 'VoidCallback onTap'

  const AnswerButton({
    Key? key, // Use 'Key?' instead of 'super.key'
    required this.answerText,
    required this.onTap,
  }) : super(key: key); // Call the super constructor with 'key'

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color(0xFF7A5A80), // Use 'Color(0xFF7A5A80)' to define a color
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerText,
      textAlign: TextAlign.center,
      ),
    );
  }
}