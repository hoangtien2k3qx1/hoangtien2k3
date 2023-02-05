import 'package:flutter/material.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/adaptiveText.dart';
import 'package:van_tan_portofio/widgets/customBtn.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/projectCard.dart';
import 'package:van_tan_portofio/widgets/socialMediaIcon.dart';

class PortfolioDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nPortfolio"),
          CustomSectionSubHeading(
              text: "Here are few samples of my previous work \n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return ProjectCard(
                  cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                  cardHeight: width < 1200 ? height * 0.3 : height * 0.4,
                  backImage: projects[index].banner,
                  projectIcon: projects[index].logo,
                  projectTitle: projects[index].title,
                  projectDescription: projects[index].description,
                  projectLinks: [],
                  bottomWidget: Container(),
                  projectIconData: null,
                  onTap: () {
                    _showDialog(context, projects[index].projectLink, height);
                  },
                );
              },
              itemCount: projects.length,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          OutlinedCustomBtn(
              btnText: "See More",
              onPressed: () {
                launchURL("https://github.com/doctor-blue");
              })
        ],
      ),
    );
  }

  _showDialog(context, projectLinks, height) {
    showDialog(
        context: context,
        builder: (contecxt) => AlertDialog(
            backgroundColor: Colors.grey[900],
            title: AdaptiveText(
              "Project Links!",
              style: TextStyle(fontSize: 32.0, color: Colors.white),
              textAlign: null,
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text("Back"))
            ],
            content: Container(
              height: height*0.1,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      projectLinks.length,
                      (index) => SocialMediaIconBtn(
                            icon: projectLinks[index].icon,
                            socialLink: projectLinks[index].link,
                            height: height * 0.03,
                            horizontalPadding: 10,
                          )),
                ),
              ),
            )));
  }
}
