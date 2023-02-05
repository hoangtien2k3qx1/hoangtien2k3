import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contactDesktop.dart';
import 'contactMobile.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
