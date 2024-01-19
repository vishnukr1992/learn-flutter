import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 132, 241, 136)
            : const Color.fromARGB(255, 240, 58, 45),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 37, 37, 37),
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}
