import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ScoreCounter extends StatelessWidget {
  final int totalScore;

  ScoreCounter(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Your Score was $totalScore.',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[400]),
            ),
          )),
    );
  }
}
