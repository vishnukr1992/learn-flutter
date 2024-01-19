import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onAnswer});
  final String answer;
  final void Function() onAnswer;
  @override
  Widget build(Object context) {
    return ElevatedButton(
        onPressed: onAnswer,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 109, 2, 104),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(answer, textAlign: TextAlign.center,));
  }
}
