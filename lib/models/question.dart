import 'package:flutter_application_1/models/answer.dart';

class Question {
  final String questionText;
  final List<Answer> answers;

  Question({
    required this.questionText,
    required this.answers,
  });
}