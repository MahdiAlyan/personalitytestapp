import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';


void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int _currentQuestionIndex = 0;
  Map<String, int> _personalityScores = {};

  void _startQuiz() {
    setState(() {
      _currentQuestionIndex = 1;
      _personalityScores = {};
    });
  }

  void _answerQuestion(String personality) {
    setState(() {
      _personalityScores[personality] = (_personalityScores[personality] ?? 0) + 1;
      _currentQuestionIndex++;
    });
  }

  String _calculateResult() {
    return _personalityScores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (_currentQuestionIndex == 0) {
      screen = StartScreen(onStartQuiz: _startQuiz);
    } else if (_currentQuestionIndex < questions.length) {
      screen = QuestionScreen(
        question: questions[_currentQuestionIndex],
        onAnswerSelected: _answerQuestion,
      );
    } else {
      screen = ResultScreen(
        resultText: "Your personality type is: ${_calculateResult()}",
        onRestart: _startQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Personality Test')),
        body: screen,
      ),
    );
  }
}

