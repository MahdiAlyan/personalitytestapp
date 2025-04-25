import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStartQuiz;

  const StartScreen({super.key, required this.onStartQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onStartQuiz,
        child: const Text('Start Personality Test'),
      ),
    );
  }
}