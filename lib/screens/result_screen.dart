import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String resultText;
  final VoidCallback onRestart;

  const ResultScreen({
    super.key,
    required this.resultText,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onRestart,
            child: const Text('Restart Test'),
          ),
        ],
      ),
    );
  }
}