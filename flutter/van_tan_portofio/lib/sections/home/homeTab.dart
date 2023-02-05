import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/socialMediaIcon.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/profile.png',
                height: height * 0.5,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Nguyen",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Van Tan",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    Row(
                      children: [
                        TyperAnimatedTextKit(
                            isRepeatingAnimation: true,
                            speed: Duration(milliseconds: 50),
                            textStyle: GoogleFonts.montserrat(
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                            text: [
                              " Mobile developer",
                              " Programming Youtuber",
                              " Mobile Lover"
                            ]),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < socicals.length; i++)
                      SocialMediaIconBtn(
                        icon: socicals[i].icon,
                        socialLink: socicals[i].link,
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
