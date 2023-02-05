import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/adaptiveText.dart';
import 'package:van_tan_portofio/widgets/customBtn.dart';

class ServiceDetailsMobile extends StatefulWidget {
  final String serviceTitle;
  final String serviceDesc;

  const ServiceDetailsMobile(
      {Key? key, required this.serviceTitle, required this.serviceDesc})
      : super(key: key);

  @override
  _ServiceDetailsMobileState createState() => _ServiceDetailsMobileState();
}

class _ServiceDetailsMobileState extends State<ServiceDetailsMobile> {
  CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AdaptiveText(
          widget.serviceTitle,
          style: TextStyle(),
          textAlign: null,
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdaptiveText(
                "My Previous Work",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: null,
              ),
              const SizedBox(height: 10.0),
              AdaptiveText(
                projects[_currentIndex].title,
                style: GoogleFonts.montserrat(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.white,
                ),
                textAlign: null,
              ),
              CarouselSlider.builder(
                itemCount: projects.length,
                carouselController: _carouselController,
                itemBuilder: (context, index, i) => Image.asset(
                  projects[index].banner,
                  height: 100.0,
                ),
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
              ),
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
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: kPrimaryColor,
                  ),
                  AdaptiveText(
                    widget.serviceTitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.white,
                    ),
                    textAlign: null,
                  ),
                ],
              ),
              AdaptiveText(
                widget.serviceDesc,
                style: GoogleFonts.montserrat(
                  height: 2.0,
                  color: Colors.white,
                ),
                textAlign: null,
              ),
              const SizedBox(height: 25.0),
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
                  onPressed: () => launchURL("https://wa.me/?text=Hi Hamza!"),
                  btnColor: Color(0xff34CB62),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Icon(FontAwesomeIcons.whatsapp),
                      const SizedBox(width: 8.0),
                      Text("WhatsApp"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.center,
                child: CustomFilledBtn(
                  height: 40.0,
                  onPressed: () => launchURL(
                      "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                  btnColor: Color(0xff13A800),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                        height: 35.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8.0),
                      Text("Upwork"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
