import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/aboutMeMetaData.dart';
import 'package:van_tan_portofio/widgets/customBtn.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me"),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.27 / 2),
                image: DecorationImage(
                  image: AssetImage('assets/mob.png'),
                  fit: BoxFit.fill,
                )),
                height: height * 0.27,
                width: height * 0.27,
            // child: Image.asset('assets/mob.png', height: height * 0.7),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "I'm Nguyen Van Tan, a Mobile developer, Programming Youtuber and Mobile Lover.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm come from Ha Noi Viet Nam. Now I'm a student of Hanoi Vocational College Of Technology. With the desire to become a talented Mobile Developer, I always want to learn from colleagues, friends, everyone and share the knowledge I know to them through my Youtube channel or open source projects on Github.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          AboutMeMetaData(
            data: "Name",
            information: "Nguyen Van Tan",
            alignment: Alignment.centerLeft,
          ),
          AboutMeMetaData(
            data: "Email",
            information: "vantan.nguyen0726@gmail.com",
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(btnText: "Resume", onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
