import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    'Are you Dumb?',
    'Are you sure that you\'re not?',
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex++;
      }
    });
    print('Answer Chosen');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Some_Title'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]),
        AnswerButton(
          'Yes',
          _answerQuestion,
        ),
        AnswerButton(
          'Maybe',
          _answerQuestion,
        ),
        AnswerButton(
          'Kinda',
          _answerQuestion,
        ),
        AnswerButton(
          'Idk',
          _answerQuestion,
        ),
      ]),
    ));
  }
}
