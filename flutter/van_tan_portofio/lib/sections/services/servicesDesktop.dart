import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/sections/serviceDetails/serviceDetails.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/adaptiveText.dart';
import 'package:van_tan_portofio/widgets/customTextHeading.dart';
import 'package:van_tan_portofio/widgets/hire_me_dialog.dart';
import 'package:van_tan_portofio/widgets/serviceCard.dart';

class ServiceDesktop extends StatefulWidget {
  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nWhat I Do"),
          CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help\n\n"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              services.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ServiceCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                  cardHeight: width < 1200 ? height * 0.37 : height * 0.35,
                  serviceIcon: services[index].icon,
                  serviceTitle: services[index].title,
                  serviceDescription: services[index].description,
                  serviceLink: services[index].link,
                  cardBack: ServiceCardBackWidget(
                      serviceTitle: services[index].title,
                      serviceDesc: services[index].description,
                      height: height,
                      width: width),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.serviceDesc,
      required this.serviceTitle})
      : super(key: key);

  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdaptiveText(
          serviceDesc,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: height * 0.015,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w300,
            height: width < 900 ? 1.5 : 1.8,
          ),
          textAlign: null,
        ),
        const SizedBox(height: 15.0),
        MaterialButton(
          hoverColor: kPrimaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: kPrimaryColor)),
          onPressed: () {
            serviceTitle == services[1].title
                ? launchURL(services[1].link)
                : serviceTitle == services[2].title
                    ? launchURL(services[2].link)
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ServiceDetails(
                            title: serviceTitle,
                            dec: serviceDesc,
                          ),
                        ),
                      );
          },
          child: Text(
            "Details",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: height * 0.001),
        Container(
          width: 250.0,
          height: 0.5,
          color: Colors.grey[100],
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 25.0,
          width: 150.0,
          child: MaterialButton(
            color: kPrimaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (context) => createHireMeDialog(context)),
            child: Text(
              "HIRE ME!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
