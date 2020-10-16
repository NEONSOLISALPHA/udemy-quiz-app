import 'package:Quiz_App/reset_button.dart';
import 'package:Quiz_App/score_counter.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final String buttonText;
  final Function buttonFunc;

  Result(this.totalScore, this.buttonText, this.buttonFunc);

  String getText(int finalScore) {
    if (finalScore < 10) {
      return 'LOL What a loser';
    } else if (finalScore < 13) {
      return 'Meh, U are Okay..ish';
    } else {
      return 'U, My dude are pretty awesome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Center(
              child: Text(
                getText(totalScore),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.pink[300],
                ),
              ),
            ),
          ),
          ResetButton(buttonText, buttonFunc),
          ScoreCounter(totalScore)
        ],
      ),
    );
  }
}
