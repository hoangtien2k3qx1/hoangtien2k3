import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/adaptiveText.dart';
import 'package:van_tan_portofio/widgets/customBtn.dart';

class ServiceDetailsDesktop extends StatelessWidget {
  final String serviceTitle;
  final String details;

  const ServiceDetailsDesktop(
      {Key? key, required this.details, required this.serviceTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
              child: ServiceDetailsDescription(
            serviceTitle: serviceTitle,
            desc: details,
          )),
          Expanded(child: ServicesShowCase()),
        ],
      ),
    );
  }
}

class ServiceDetailsDescription extends StatelessWidget {
  final String serviceTitle;
  final String desc;

  const ServiceDetailsDescription(
      {Key? key, required this.desc, required this.serviceTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 50.0, top: 20.0, right: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.play_arrow_rounded,
                color: kPrimaryColor,
              ),
              const SizedBox(width: 8.0),
              AdaptiveText(
                serviceTitle,
                style: GoogleFonts.montserrat(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Colors.white),
                textAlign: null,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          serviceTitle == services[0].title
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8.0),
                    AdaptiveText(
                      "Would you like to work with me? Awesome!",
                      style: TextStyle(color: Colors.white),
                      textAlign: null,
                    ),
                  ],
                )
              : Container(),
          const SizedBox(height: 15.0),
          AdaptiveText(
            desc,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 1.2,
                height: 3.0),
            textAlign: null,
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.center,
            child: AdaptiveText(
              "Get in Touch!",
              style: GoogleFonts.montserrat(color: Colors.white),
              textAlign: null,
            ),
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.center,
            child: CustomFilledBtn(
              height: 40.0,
              onPressed: () => launchURL("https://google.com"),
              btnColor: Color(0xff34CB62),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icons.ac_unit,
                  const SizedBox(width: 8.0),
                  Text("Google.com"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.center,
            child: CustomFilledBtn(
              height: 40.0,
              onPressed: () => launchURL("https://google.com"),
              btnColor: Color(0xff13A800),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8.0),
                  Text("Google.com"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35.0),
        ],
      ),
    );
  }
}

class ServicesShowCase extends StatefulWidget {
  @override
  _ServicesShowCaseState createState() => _ServicesShowCaseState();
}

class _ServicesShowCaseState extends State<ServicesShowCase> {
  CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  bool _autoPlay = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            bottomLeft: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(-2, 0),
              blurRadius: 12.0,
            )
          ]),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AdaptiveText(
            " My Previous Work",
            style: GoogleFonts.montserrat(
                fontSize: 24.0, letterSpacing: 1.2, color: Colors.white),
            textAlign: null,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              AdaptiveText(
                " ${projects[_currentIndex].title} ",
                style: GoogleFonts.montserrat(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.white,
                ),
                textAlign: null,
              ),
              projects[_currentIndex].title == projects[1].title
                  ? InkWell(
                      onTap: () => launchURL(
                          "https://play.google.com/store/apps/details?id=com.hmz.al_quran&pli=1"),
                      child: Icon(
                        Icons.store,
                        color: Colors.green,
                      ))
                  : Container(),
              Expanded(child: Container()),
              IconButton(
                onPressed: () =>
                    launchURL(projects[_currentIndex].projectLink.toString()),
                icon: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          InkWell(
            onTap: () {},
            mouseCursor: MouseCursor.defer,
            onHover: (hovering) {
              if (hovering) {
                setState(() {
                  _autoPlay = false;
                });
              } else {
                setState(() {
                  _autoPlay = true;
                });
              }
            },
            child: Stack(
              children: [
                Container(
                  height: screenSize.height * 0.55,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(projects[_currentIndex].banner),
                          fit: BoxFit.cover)),
                  child: SizedBox(
                    height: screenSize.height * 0.55,
                    width: screenSize.width,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          decoration: new BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: CarouselSlider.builder(
                      itemCount: projects.length,
                      carouselController: _carouselController,
                      itemBuilder: (context, index, i) => Image.asset(
                        projects[index].banner,
                        height: 300.0,
                      ),
                      options: CarouselOptions(
                          autoPlay: _autoPlay,
                          autoPlayInterval: Duration(seconds: 3),
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projects.map((project) {
                int index = projects.indexOf(project);
                return AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: _currentIndex == index ? 25.0 : 7.0,
                  height: 7.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: _currentIndex == index
                        ? kPrimaryColor
                        : kPrimaryColor.withAlpha(100),
                  ),
                );
              }).toList()),
        ],
      ),
    );
  }
}
