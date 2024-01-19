import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              itemData['user_answer'] as String,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 55, 168, 243),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              itemData['correct_answer'] as String,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 2, 209, 95)),
            ),
          ],
        ),
      ),
    ]);
  }
}
