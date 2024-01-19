import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = "START_SCREEN";
  List<String> selectedAnswers = [];

  void choseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "RESULTS_SCREEN";
      });
    }
  }

  @override
  void initState() {
    activeScreen = "START_SCREEN";
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = "QUESTIONS_SCREEN";
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = "START_SCREEN";
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreenWidget = StartScreen(switchScreen);
    if (activeScreen == "QUESTIONS_SCREEN") {
      activeScreenWidget = QuestionsScreen(onAnswer: choseAnswer);
    } else if (activeScreen == "RESULTS_SCREEN") {
      activeScreenWidget =
          ResultsScreen(chosenAnswers: selectedAnswers, onReset: restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 210, 86, 235),
            Color.fromARGB(255, 114, 32, 139),
            Color.fromARGB(255, 73, 6, 128),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: activeScreenWidget,
        ),
      ),
    );
  }
}
