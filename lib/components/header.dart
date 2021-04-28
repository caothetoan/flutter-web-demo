import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Quiziz",
            style: GoogleFonts.reenieBeanie(fontSize: 18),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
