import 'package:flutter/material.dart';
import '../models/personality.dart';

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
            personality[PersonalityType.values.firstWhere((type) => resultText.contains(type.name))] ??
            "Unknown Personality Type",
            style: const TextStyle(fontSize: 18),
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