import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final Function(String) onAnswerSelected;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question.questionText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ...question.answers.map((answer) {
          return ElevatedButton(
            onPressed: () => onAnswerSelected(answer.personality),
            child: Text(answer.text),
          );
        }),
      ],
    );
  }
}