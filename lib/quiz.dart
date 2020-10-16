import 'package:flutter/material.dart';
import './question.dart';
import './answer_button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionIndex;
  final Function buttonFunc;

  Quiz(this.questionsList, this.questionIndex, this.buttonFunc);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionsList[questionIndex]['question']),
      ...(questionsList[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return AnswerButton(answer['question text'], () {
          buttonFunc(answer['score']);
        });
      }).toList()
    ]);
  }
}
