import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;
  final Function onPressFunc;

  AnswerButton(this.buttonText, this.onPressFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Colors.pink[200],
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
          textAlign: TextAlign.center,
        ),
        onPressed: onPressFunc,
      ),
    );
  }
}
