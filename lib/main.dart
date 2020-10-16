import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const questions = [
    {
      'question': 'Where is Gamora?',
      'answers': [
        {'question text': 'ask her urself.', 'score': 4},
        {'question text': 'why u wanna know?', 'score': 5},
        {'question text': 'who cares?', 'score': 7},
      ]
    },
    {
      'question': 'U like Donuts?',
      'answers': [
        {'question text': 'OMG I Love Them!', 'score': 6},
        {'question text': 'Bane of my fucking existence.', 'score': 3},
        {'question text': 'Yeah sure', 'score': 7},
        {'question text': 'Meh', 'score': 4}
      ]
    },
    {
      'question': 'What does the fox say?',
      'answers': [
        {'question text': 'ringdingdingding', 'score': 5},
        {'question text': 'ringdingdingding', 'score': 69},
        {'question text': 'ringdingdingding', 'score': 3},
        {'question text': 'ringdingdingding', 'score': -1},
      ]
    }
  ];

  void _answerQuestion(score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
    print('Answer Chosen');
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print('quiz reset!');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.pink[200],
          title: Text('Some_Title'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, 'Reset?', resetQuiz),
      ),
    );
  }
}
