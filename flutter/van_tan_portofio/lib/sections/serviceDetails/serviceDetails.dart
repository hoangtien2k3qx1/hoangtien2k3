import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:van_tan_portofio/sections/serviceDetails/serviceDetailsDesktop.dart';
import 'package:van_tan_portofio/sections/serviceDetails/serviceDetailsMobile.dart';

class ServiceDetails extends StatelessWidget {
  final String dec;
  final String title;

  const ServiceDetails({Key? key, required this.dec, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceDetailsMobile(
        serviceTitle: title,
        serviceDesc: dec,
      ),
      tablet: ServiceDetailsMobile(
        serviceTitle: title,
        serviceDesc: dec,
      ),
      desktop: ServiceDetailsDesktop(
        serviceTitle: title,
        details: dec,
      ),
    );
  }
}
