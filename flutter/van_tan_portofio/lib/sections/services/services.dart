import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:van_tan_portofio/sections/services/servicesDesktop.dart';
import 'package:van_tan_portofio/sections/services/servicesMobile.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
