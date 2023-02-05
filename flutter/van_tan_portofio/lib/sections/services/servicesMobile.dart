import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
import 'package:van_tan_portofio/sections/services/servicesDesktop.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/serviceCard.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nWhat I Do"),
          CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ServiceCard(
                  cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                  serviceIcon: services[i].icon,
                  serviceTitle: services[i].title,
                  serviceDescription: services[i].description,
                  serviceLink: services[i].link,
                  cardBack: ServiceCardBackWidget(
                    serviceTitle: services[i].title,
                    serviceDesc: services[i].description,
                    height: height,
                    width: width,
                  ),
                  cardHeight: 20,
                ),
              );
            },
            options: CarouselOptions(
                height: width < 450 ? height * 0.4 : height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
