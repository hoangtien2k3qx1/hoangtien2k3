import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/projectCard.dart';

class ContactMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nGet in Touch"),
          CustomSectionSubHeading(text: "Let's build something together \n\n"),
          CarouselSlider.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                projectIconData: contacts[i].icon,
                projectTitle: contacts[i].title,
                projectDescription: contacts[i].detail,
                backImage: null,
                bottomWidget: Container(),
                cardHeight: 20,
                projectIcon: null,
                projectLinks: [], onTap: () {  },
              ),
            ),
            options: CarouselOptions(
                height: height * 0.3,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
        ],
      ),
    );
  }
}
