import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {Key? key, required this.chosenAnswers, required this.onReset})
      : super(key: key);

  final List<String> chosenAnswers;
  final void Function() onReset;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summaryData = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectQuestions = summaryData
        .where((element) => element['correct_answer'] == element['user_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  'You answered $numberOfCorrectQuestions out of $numberOfTotalQuestions questions correctly',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 247, 173, 243))),
              const SizedBox(height: 30),
              QuestionSummary(summaryData),
              const SizedBox(height: 30),
              TextButton.icon(
                  icon: const Icon(Icons.refresh),
                  onPressed: onReset,
                  label: const Text('Restart Quiz'))
            ],
          ),
        ),
      ),
    );
  }
}
