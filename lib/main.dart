import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

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
      _questionIndex++;
      print('Answer ' + questions[_questionIndex] + 'chosen');
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Some_Title'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]),
        RaisedButton(
          child: Text('Yes'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Yes'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Maybe'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Kinda'),
          onPressed: _answerQuestion,
        ),
      ]),
    ));
  }
}
