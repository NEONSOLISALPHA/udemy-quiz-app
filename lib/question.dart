import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(28),
      child: Text(
        questionText,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: Colors.pink[300],
                fontSize: 30,
                fontWeight: FontWeight.w600)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
