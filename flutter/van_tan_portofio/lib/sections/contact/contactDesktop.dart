import 'package:flutter/material.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/projectCard.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nGet in Touch"),
          CustomSectionSubHeading(
              text: "Let's build something together \n\n"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contacts.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.25,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.24,
                    projectIconData: contacts[index].icon,
                    projectTitle: contacts[index].title,
                    projectDescription: contacts[index].detail, backImage: null,
                     bottomWidget: Container(), 
                     projectIcon: null, 
                     projectLinks: [], onTap: () {  },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
