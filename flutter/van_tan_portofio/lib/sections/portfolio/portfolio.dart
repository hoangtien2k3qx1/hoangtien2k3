import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:van_tan_portofio/sections/portfolio/portfolioDesktop.dart';
import 'package:van_tan_portofio/sections/portfolio/portfolioMobile.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
