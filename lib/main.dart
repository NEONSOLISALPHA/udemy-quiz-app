import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    'Are you Dumb?',
    'Are you sure that you\'re not',
  ];

  void answerQuestion() {
    setState(() {
      questionIndex++;
      print('Answer ' + questions[questionIndex] + 'chosen');
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Some_Title'),
      ),
      body: Column(children: [
        Text(questions[questionIndex]),
        RaisedButton(
          child: Text('Yes'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Yes'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Maybe'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Kinda'),
          onPressed: answerQuestion,
        ),
      ]),
    ));
  }
}
