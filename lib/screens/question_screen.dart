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
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question.questionText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ...question.answers.map((answer) {
            return ElevatedButton(
              onPressed: () => onAnswerSelected(answer.personality),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  backgroundColor: const Color.fromARGB(255, 0, 247, 255),
                ),
              child: Text(
                answer.text,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            );
          })
      ],)
    );
  }
}