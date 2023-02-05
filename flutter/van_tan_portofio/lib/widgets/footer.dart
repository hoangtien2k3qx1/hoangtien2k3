import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'adaptiveText.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      color: Colors.grey[900],
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AdaptiveText(
              "Developed in 💙 with ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                color:  Colors.white,
              ), textAlign: null,
            ),
            InkWell(
              onTap: () => {
                
              },
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
