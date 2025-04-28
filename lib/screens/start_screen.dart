import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStartQuiz;

  const StartScreen({super.key, required this.onStartQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Discover Your Personality Type!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🗺️',style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            const Text('📝',style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('❤️',style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            const Text('🧠',style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
          ],
        ),

        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: onStartQuiz,
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
  
}