import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetButton extends StatelessWidget {
  final Function buttonFunc;
  final String buttonText;

  ResetButton(this.buttonText, this.buttonFunc);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.pink[200],
        padding: EdgeInsets.symmetric(vertical: 3),
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        onPressed: buttonFunc,
      ),
    );
  }
}
