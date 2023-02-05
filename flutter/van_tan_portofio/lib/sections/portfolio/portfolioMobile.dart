import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/customBtn.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/projectCard.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nPortfolio"),
          CustomSectionSubHeading(
              text: "Here are few samples of my previous work :)\n\n"),
          CarouselSlider.builder(
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int itemIndex, int index) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ProjectCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                  backImage: null,
                  projectIcon: projects[index].logo,
                  projectTitle: projects[index].title,
                  projectDescription: projects[index].description,
                  projectLinks: projects[index].projectLink,
                 bottomWidget: Container(),
                  cardHeight: width < 650 ? height * 0.6 : height * 0.8, 
                  projectIconData: null, onTap: () {  },
              ),
            ),
            options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: height * 0.03,
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
}
